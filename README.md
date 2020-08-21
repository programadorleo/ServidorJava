# JSP
#### **P**aginas de **S**ervidor **J**ava

###### Aplicacion web: es un sitio web cuyas paginas son generadas dinamicamente, dependiente de la accion del usuario se genera unas paginas u otras.


![](https://github.com/programadorleo/ServidorJava/blob/master/img/clienteservidorbd.png)

#### Software necesario

- Java JEE IDE
- Servidor Web (Tomcat)


### ¿Como esta formado un archivo JSP?

#### Codigo java "Embutido dentro de código HTML"
#### Se guarda en la carpeta web del servidor 
#### Debe guardarse con extensión .jsp 

### Formato HTML

```html

<html>
   
    <body>
        La hora del servidor es <%=new java.util.Date()%>
    </body>
</html>
```

#### 1. Cliente realiza una peticion al servidor. 
#### 2. El Servidor consulta (generalmente a una bd), 
#### 3. Con esa informacion realiza una pagina html que envia al cliente.






