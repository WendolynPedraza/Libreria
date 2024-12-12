using System;
using System.Collections.Generic;
using System.Configuration;
using System.Xml;
using System.Net;
using System.Xml.Xsl;
using System.IO;
using System.Text;

namespace Libreria
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //declaro una variable global
        public string tipolibros = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Hola desde el CodeBehind";
            //Recupero una variable que viene desde la url, para ello valido si existeuna variable llamada "Id"
            //Request resultado de una poeticion 
            if (Request.QueryString["Id"] == null)

            {
                tipolibros = "0";
            }
            else
            {
                tipolibros = Request.QueryString["Id"];
            }
            TransformacionXml();
        }
        //metodo para cargar y transformar un XML usando XSLT
        private void TransformacionXml()
        {
            //RECUPERAMOS LAS RUTAS DE NUESTRO XML Y XSLT
            string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/Libros.xml";
            string xsltPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/Template.xslt";

            //LEER EL ARCHIVO XML
            XmlTextReader xmlTextReader = new XmlTextReader(xmlPath);


            //CONFIGURAMOS LAS CREDENCIALES PARA RESILVER RECURSOS EXTERNOS COMO EL  XSLT
            XmlUrlResolver xmlUrlResolver = new XmlUrlResolver();
            xmlUrlResolver.Credentials = CredentialCache.DefaultCredentials;


            //CREAR LAS CONFIGURACIONES PARA PODER ACCEDER AL XSLT
            //LOS PARAMETROS "TRUE" SIRVE PARA :
            //! TRATAR EL XSLT COMO DOCUMENTO QUE PUEDA SER TRANSFORMADO
            //2. PERMITIR LA EJECUCION DE BLOQUES DE CODIGO js COMO RESULTADO DE LA TRANSFORMACION.
            XsltSettings settings = new XsltSettings(true, true);

            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(xsltPath, settings, xmlUrlResolver);

            //creamos un stringBuilder para almacenar el resultado de la trasformacion
            StringBuilder stringBuilder = new StringBuilder();
            TextWriter textWriter = new StringWriter(stringBuilder);

            //configuremos los argumentos para la tranformacion
            XsltArgumentList xsltArgumentList = new XsltArgumentList();
            xsltArgumentList.AddParam("TipoLibros", "", tipolibros);

            //transformamos el xml => HTML usados XSLT
            xslt.Transform(xmlTextReader, xsltArgumentList, textWriter);

            //obtemos el resultado de la transformacion como 1 sola cadena
            string resultado = stringBuilder.ToString();

            //escribimmos el resultado como una respuesta HTTP
            Response.Write(resultado);
        }
    }
}