<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if(file_exists("assets/culqi-php-master/lib/culqi.php"))
{
    require_once 'assets/Requests-master/Requests-master/library/Requests.php';
    Requests::register_autoloader();
    require_once "assets/culqi-php-master/lib/culqi.php";
}

class Website extends MY_Controller
{
    public $redes_sociales = array();
    
    // Pasarela de Pagos Culqi..
    public $comercio = "";
    public $key_secret = "";
    public $como_comprar = [];

	function __construct()
	{
		parent::__construct();

        // CULQI...
        $this->comercio = $this->configuracion['comercio_culqi'];
        $this->key_secret = $this->configuracion['key_secret_culqi'];

        $this->redes_sociales = array('facebook-f' => 'facebook', 'twitter' => 'twitter', 'instagram' => 'instagram', 'youtube' => 'youtube', 'linkedin' => 'linkedin');
	}

    function unete()
    {
        $campania = $this->module_model->seleccionar('campanias', array('estado' => 1, 'activado' => 1), 1, 1); $ignore = array('terminos');

        if(count($campania) > 0)
        {
            if(isset($_POST) AND count($_POST) > 0)
            {
                $array = array(); $array['id_padre'] = $campania['id'];

                foreach($_POST as $key => $value)
                {
                    if(!in_array($key, $ignore))
                    {
                        $array[$key] = $value;
                    }
                }

                $array['estado'] = 1;
                $array['fecha_creacion'] = $this->fecha();
                $array['fecha_modificacion'] = $this->fecha();
                $array['usuario_creacion'] = 1;
                $array['usuario_modificacion'] = 1;
                $client = new \GuzzleHttp\Client(['http://google.com']);

                $this->module_model->guardar('formularios', $array);

                $message = array('type' => 'success', 'content' => 'Se registró correctamente. En unos minutos se comunicarán con usted.');
                $this->session->set_flashdata('message', $message);
            }
        }


        
//        redirect("/#message", "refresh");
    }

    function facturacion()
    {
        // Recuperar el cuerpo de la solicitud y analizarlo como JSON
        $input = file_get_contents("php://input");
        $event_json = json_decode($input);

        $this->enviar_email("kluizsv@gmail.com", $campania['email_contacto'], "Respuesta de WebHooks Culqi", $event_json);

        //Respuesta a Culqi
        http_response_code(200);
        $array = array(
            "response" => "Webhook de Culqi recibido"
        );
        echo json_encode($array);
    }

    function prueba()
    {
        $campania = $this->module_model->seleccionar('campanias', array('estado' => 1, 'activado' => 1), 1, 1);

        $contacto = ""; $destinatario = "kluizsv@gmail.com, luis@lod.pe, donaciones.peru@plan-international.org"; $asunto = "Correo de Prueba";
        $_html = "Contenido de Prueba";

        $this->enviar_email($contacto, $destinatario, $asunto, $_html);
    }

    function checkout()
    {
        $campania = $this->module_model->seleccionar('campanias', array('estado' => 1, 'activado' => 1), 1, 1);

        if(count($campania) > 0)
        {
            if(isset($_POST) AND count($_POST) > 0)
            {
                $data = array(); $pedidoId = date("Ymd") . date("His"); $array = []; $total = 0;

                if($_POST['monto_total'] == 1)
                {
                    $total = (double) $_POST['otro_monto'];
                }
                else
                {
                    $total = (double) $_POST['monto_total'];
                }

                $descripcion = $_POST['descripcion'];
                $moneda = $_POST['tipo_moneda'];

                if($total > 0)
                {
                    $_detalle = ''; $activado = 2;

                    $array['id'] = $pedidoId;
                    $array['token'] = $this->input->post('token');
                    $array['id_padre'] = $campania['id'];
                    $array['tipo_pago'] = $this->input->post('tipo_pago'); // 1 = UNICA || 2 = MENSUAL
                    $array['nombres'] = $this->input->post('nombres');
                    $array['apellido_paterno'] = $this->input->post('apellido_paterno');
                    $array['apellido_materno'] = $this->input->post('apellido_materno');
                    $array['correo_electronico'] = $this->input->post('email');
                    $array['telefono'] = $this->input->post('celular');
                    $array['tipo_documento'] = $this->input->post('tipo_documento');
                    $array['otro_tipo_documento'] = $this->input->post('otro_tipo_documento');
                    $array['numero_documento'] = $this->input->post('numero_documento');
                    $array['pais'] = $this->input->post('pais');
                    $array['cantidad_apoyo'] = $this->input->post('cantidad_apoyo');
                    $array['moneda'] = $moneda;
                    $array['total'] = $total;
                    $array['detalle'] = '';
                    $array['estado'] = 1;
                    $array['activado'] = $activado;
                    $array['usuario_creacion'] = 1;
                    $array['usuario_modificacion'] = 1;
                    $array['fecha_creacion'] = $this->fecha();
                    $array['fecha_modificacion'] = $this->fecha();

                    $this->module_model->guardar('pagos', $array); $id_padre = $pedidoId;

                    // Procesamiento con Culqi..
                    try
                    {
                        $culqi = new Culqi\Culqi(array('api_key' => $this->key_secret));

                        if($array['tipo_pago'] == 1) // Pago unico
                        {
                            $charge = $culqi->Charges->create(
                                array(
                                    "amount" => ($total * 100),
                                    "capture" => true,
                                    "currency_code" => $moneda,
                                    "description" => $campania[$descripcion],
                                    "email" => $this->input->post('email'),
                                    "installments" => 0,
                                    "source_id" => $this->input->post('token')
                                )
                            );
                        }

                        if($array['tipo_pago'] == 2) // Pago mensual
                        {
                            $plan = $culqi->Plans->create(
                                array(
                                    "alias" => "plan-culqi".uniqid(),
                                    "amount" => ($total * 100),
                                    "currency_code" => $moneda,
                                    "interval" => "meses",
                                    "interval_count" => 1,
                                    "name" => $campania[$descripcion]
                                )
                            );

                            $pais = $this->module_model->buscar('paises', $array['pais']);

                            $tipos_documento = array('', 'DNI', 'CE', 'Otro'); $metadata = array();

                            if($array['tipo_documento'] < 3)
                            {
                                $metadata['tipo_documento'] = $tipos_documento[$array['tipo_documento']];
                            }
                            else
                            {
                                $metadata['tipo_documento'] = $array['otro_tipo_documento'];
                            }

                            $metadata['numero_documento'] = $array['numero_documento'];

                            //Crear Cliente
                            $cliente = $culqi->Customers->create(
                                array(
                                    "country_code" => $pais['codigo_iso'],
                                    "address_city" => $pais['titulo'],
                                    "address" => $pais['titulo'] . ' - ' . $pais['codigo_iso'],
                                    "email" => $array['correo_electronico'],
                                    "first_name" => $array['nombres'],
                                    "last_name" => $array['apellido_paterno'] . ' ' . $array['apellido_materno'],
                                    "metadata" => $metadata,
                                    "phone_number" => $array['telefono']
                                )
                            );
                            //Crear Tarjeta
                            $tarjeta = $culqi->Cards->create(
                                array(
                                    "customer_id" => $cliente->id,
                                    "token_id" => $this->input->post('token')
                                )
                            );

                            $suscripcion = $culqi->Subscriptions->create(
                                array(
                                    "card_id" => $tarjeta->id,
                                    "plan_id" => $plan->id
                                )
                            );

                            $charge = $suscripcion->charges[0];
                        }

                        //if($data['codigo_respuesta'] == 'venta_exitosa' OR $data['codigo_respuesta'] == 'venta_registrada')
                        if($charge->outcome->code == 'AUT0000')
                        {
                            $_detalle = $charge->outcome->user_message; $activado = 1; $message = array('type' => 'success', 'content' => 'Se registró la donación correctamente.');
                        }
                        else
                        {
                            $message = array('type' => 'danger', 'content' => $charge); $activado = 0;
                        }

                        $this->session->set_flashdata('message', $message);

                        $compra = $this->module_model->buscar('pagos', $pedidoId); $estados = array('Error de Pago', 'Pagado', 'Pendiente');

                        $html = ''; $contacto = $campania['email_contacto']; $destinatario = $compra['correo_electronico']; $asunto = $campania['titulo'] . ' - Detalle de Donación';

                        $html .= 'Fecha de Donación: ' . date("d/m/Y", strtotime($compra['fecha_creacion'])) . '<br />';
                        $html .= 'Número de Orden: ' . $compra['id'] . '<br />';
                        $html .= 'Método de Pago: ' . $campania[$descripcion] . '<br />';
                        $html .= 'Estado de la Transacción: ' . $estados[$activado] . '<br />';
                        
                        if($activado == 1) // Pagado..
                        {
                            $html .= '<hr /><strong>Su donación ha sido exitosa.</strong><br />';
                        }

                        $html .= '<hr />';
                        $html .= '<h4>Datos del Cliente</h4>';
                        $html .= 'Nombres y Apellidos: ' . $compra['nombres'] . ' ' . $compra['apellido_paterno'] . ' ' . $compra['apellido_materno'] . '<br />';
                        $html .= 'Correo Electrónico: ' . $compra['correo_electronico'] . '<br />';
                        $html .= 'Teléfono: ' . $compra['telefono'] . '<br />';
                        $html .= 'Total: <strong> ' . number_format($compra['total'], 2) . ' ' . $compra['moneda'] . '</strong><br />';
                        $html .= '<hr />';
                        $html .= date("Y-m-d H:i:s");

                        if($activado == 1 OR $activado == 0)
                        {
                            //$_html = $this->render_email($asunto, 'Tu donación se está procesando, gracias por la confianza.', $html);

                            $_html = $html;

                            if($compra['tipo_pago'] == 2) // Donación Mensual..
                            {
                                $_update = array('activado' => $activado, 'detalle' => $_detalle, 'tarjeta' => $tarjeta->id, 'plan' => $plan->id, 'suscripcion' => $charge->id, 'html' => $_html);
                            }
                            
                            if($compra['tipo_pago'] == 1) // Donación Única..
                            {
                                $_update = array('activado' => $activado, 'detalle' => $_detalle, 'html' => $_html);
                            }

                            $this->module_model->actualizar('pagos', $_update, $pedidoId);

                            $this->enviar_email($contacto, $destinatario, $asunto, $_html);
                            // Correo para plan international..
                            $this->enviar_email($contacto, $contacto, $asunto, $_html);

                            $this->cargar_session('html', $html); redirect("/#message", "refresh");
                        }
                        else
                        {
                            redirect("/", "refresh");
                        }
                    }
                    catch (Exception $e)
                    {
                        $response = (array) json_decode($e->getMessage()); $activado = 0;

                        $message = array('type' => 'danger', 'content' => $response['merchant_message']);
                        $this->session->set_flashdata('message', $message); redirect("/", "refresh");
                    }
                }
                else
                {
                    // Error de Monto a pagar..
                    $message = array('type' => 'danger', 'content' => 'El monto a pagar no alcanza al monto de compra. Por favor, revise el monto ingresado con el total de compra.');
                    $this->session->set_flashdata('message', $message);
                    
                    redirect("/", "refresh");
                }
            }
            else
            {
                redirect("/", "refresh");
            }
        }
        else
        {
            redirect("/", "refresh");
        }
    }

    function avisos()
    {
        /*
        $fecha = strtotime("-1 month", strtotime(date("Y-m-d")));

        $pagos = $this->module_model->seleccionar('pagos', array('tipo_pago' => 2, 'fecha_creacion' => $fecha, 'estado' => 1, 'activado' => 1));

        foreach($pagos as $key => $value)
        {
            $campania = $this->module_model->buscar('campanias', $value['id_padre']);

            $html = ''; $contacto = $campania['email_contacto']; $destinatario = $value['correo_electronico']; $asunto = $campania['titulo'] . ' - Renovación de Pago Mensual';

            $html .= 'Fecha de Donación: ' . date("d/m/Y", strtotime($value['fecha_creacion'])) . '<br />';
            $html .= 'Número de Orden: ' . $value['id'] . '<br />';
            $html .= 'Método de Pago: ' . $campania['segundo_tipo_donacion'] . '<br />';
            $html .= 'Estado de la Compra: ' . $value[$activado] . '<br />';
            
            if($activado == 1 OR $activado == 0)
            {
                $html .= '<hr /><strong>' . $_detalle . '</strong><br />';
            }

            $html .= '<hr />';
            $html .= '<h4>Datos del Cliente</h4>';
            $html .= 'Nombres y Apellidos: ' . $value['nombres'] . ' ' . $value['apellido_paterno'] . ' ' . $value['apellido_materno'] . '<br />';
            $html .= 'Correo Electrónico: ' . $value['correo_electronico'] . '<br />';
            $html .= 'Teléfono: ' . $value['telefono'] . '<br />';
            $html .= 'Total: <strong>S/ ' . number_format($value['total'], 2) . '</strong><br />';

            $this->enviar_email($contacto, $destinatario, $asunto, $html);
        }

        redirect("/", "refresh");
        */
    }

    function index()
    {
    	$data = array(); $data['campania'] = $this->module_model->seleccionar('campanias', array('estado' => 1, 'activado' => 1), 1, 1);

    	if(count($data['campania']) > 0)
    	{
    		$where = array('id_padre' => $data['campania']['id'], 'estado' => 1, 'activado' => 1);

    		$config['item_order'] = array('key' => 'orden', 'value' => 'asc'); $this->initialize($config);

    		$data['banners'] = $this->module_model->seleccionar('banners', $where);
    		$data['testimonios'] = $this->module_model->seleccionar('testimonios', $where);
    		$data['estadisticas'] = $this->module_model->seleccionar('estadisticas', $where);

    		$_where = $where; $_where['tipo_donacion'] = 1;
    		$data['precios_tipo_uno'] = $this->module_model->seleccionar('precios', $_where);

    		$_where = $where; $_where['tipo_donacion'] = 2;
    		$data['precios_tipo_dos'] = $this->module_model->seleccionar('precios', $_where);

    		$data['programas'] = $this->module_model->seleccionar('programas', $where);
    		$data['aliados'] = $this->module_model->seleccionar('aliados', $where);
    		$this->clear_data();

            $data['paises'] = $this->module_model->seleccionar('paises', array('estado' => 1));

    		$this->load->view("frontend/index_view", $data);
    	}
    	else
    	{
    		$this->show_404();
    	}
    }

    function show_404()
    {
    	echo "Error de Visualización";
    }
}
