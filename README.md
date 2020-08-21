<<<<<<< HEAD
#### **P**aginas de **S**ervidor **J**ava

###### Aplicacion web: es un sitio web cuyas paginas son generadas dinamicamente, dependiente de la accion del usuario se genera unas paginas u otras.

![](C:\Users\Gandarias\Desktop\JSPServidorJava\ServidorJava-1\img\clienteservidorbd.jpg)
=======
# JSP
#### **P**aginas de** S**ervidor **J**ava

###### Aplicacion web: es un sitio web cuyas paginas son generadas dinamicamente, dependiente de la accion del usuario se genera unas paginas u otras.

![](https://github.com/programadorleo/ServidorJava/blob/master/img/clienteservidorbd.jpg)


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

>>>>>>> 9db988bb5fd7660b663e695939441aa8f8638b6c

