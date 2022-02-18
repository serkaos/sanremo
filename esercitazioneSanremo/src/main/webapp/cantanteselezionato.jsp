<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
       <head>
  
             <meta charset="ISO-8859-1">
             <title>Lascia una recensione!</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
                  
            <style>
                h3{
                   text-align:center;
                   color:black;
                }
                h5{
                    text-align:center;
                }
  
            </style>
       </head>
       <%
       session.setAttribute("token","true");
       String indice=request.getParameter("indice");
       %>
       <body>
               <h3>Cosa ne pensi di questo cantante?Lascia una recensione.</h3>
               
               <h5>Ti è piaciuto?</h5>
               <br>
               <br>
              <table style="margin: 0 auto;">
                   <tr>
                         <td> 
                                    <a href="artisti.jsp?votopos=no&indice=<%=indice %>"> <button type="button" class="btn btn-light">Sì</button></a>
                         </td>
                         
                         <td>
                                    <a href="artisti.jsp?votoneg=no&indice=<%=indice %>"><button type="button"  class="btn btn-light">No</button></a> 
                         </td>
                   </tr>
                </table>
               <br>
               <br>
               <br>
               
              <center><a href="artisti.jsp">Torna alla pagina principale</a></center>
       </body>
</html>