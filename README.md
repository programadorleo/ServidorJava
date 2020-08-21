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


## Tipo de código JSP

**Expresiones:** Ocupan solo una linea de codigo 

<%= expresion Java%>

Convirtiendo a mayusculas <%= String("patricio").toUpperCase() %>
La suma de 5 y 7 es: <%=5+7%>
10 es menor que 100: <%=10< 100 %>


**Scrptlests:**  Pueden tener varias lineas de codigo

<% varias lineas de codigo%>


<%
for(int i=0; i< 10; i++){
	out.println(" Mensaje"+ i);
}
%>


**Declaraciones:** Se incluyen variables y metodos

<%! Declaración de variables o métodos %>

<%! 

private int resultado;
public int metodoSuma(int num1, int num2){
resultado=nume1+num2;
return resultado;
}

%>






