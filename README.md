# JSP (Páginas de Servidor Web)
#### Estas páginas nos sirven para crear aplicaciones web 
##### Aplicacion web: es un sitio web cuyas páginas son generadas dinamicamente, dependiente de la acción del usuario se genera unas paginas u otras.


![](https://github.com/programadorleo/ServidorJava/blob/master/img/clienteservidorbd.png)

1. Cliente realiza una peticion al servidor. 
2. El Servidor consulta (generalmente a una bd), 
3. Con esa informacion realiza una pagina html que envia al cliente.


#### Software necesario

- Java JEE IDE
- Servidor Web (Tomcat)



Un archivo **JSP**está formado por **codigo java**embutido en codigo **html**, se deber guardar en la carpeta web del servidor (WebContent) y con extensión jsp.


### Formato HTML

```html

<html>
   <body>
        La hora del servidor es <%=new java.util.Date()%>
		                                                (código java)
    </body>
</html>
```




## Tipo de código JSP

**Expresiones:** Ocupan solo una linea de codigo 

**<%=** expresion Java**%>**

Convirtiendo a mayusculas <%= String("patricio").toUpperCase() %>
La suma de 5 y 7 es: <%=5+7%>
10 es menor que 100: <%=10< 100 %>


**Scriptlests:**  Pueden tener varias lineas de codigo

**<%** varias lineas de codigo**%>**


<%
for(int i=0; i< 10; i++){
	out.println(" Mensaje"+ i);
}
%>


**Declaraciones:** Se incluyen variables y metodos

**<%!** Declaración de variables o métodos **%>**

<%! 

private int resultado;
public int metodoSuma(int num1, int num2){
resultado=nume1+num2;
return resultado;
}

%>
