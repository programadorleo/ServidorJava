#### **P**aginas de **S**ervidor **J**ava

###### Aplicacion web: es un sitio web cuyas paginas son generadas dinamicamente, dependiente de la accion del usuario se genera unas paginas u otras.

![](https://github.com/programadorleo/ServidorJava/blob/master/img/clienteservidorbd.png)
=======
# JSP
#### **P**aginas de** S**ervidor **J**ava

###### Aplicacion web: es un sitio web cuyas paginas son generadas dinamicamente, dependiente de la accion del usuario se genera unas paginas u otras.


####Software necesario

- Java JEE IDE
- Servidor Web (Tomcat)


### ¿Como esta formado un archivo JSP?

Codigo java "Embutido dentro de código HTML"
Se guarda en la carpeta web del servidor 
Debe guardarse con extensión .jsp 

### Formato HTML

```html

<html>
   
    <body>
        La hora del servidor es <%=new java.util.Date()%>
    </body>
</html>
```
![https://github.com/programadorleo/ServidorJava/blob/master/img/clienteservidorbd.jpg]

Cliente realiza una peticion al servidor 
El Servidor consulta (generalmente a una bd), con esa informacion
realiza una pagina html que envia al cliente.



