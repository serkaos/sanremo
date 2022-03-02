<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="esercitazioneSanremo.dettagliCantanti" %>
    <%@ page import= "java.util.*"%>
    <%@ page import= "java.text.SimpleDateFormat" %>
   <!DOCTYPE html> 
   <html>
          <head>
                <meta charset="ISO-8859-1">
                <title>Artisti Sanremo 2022</title>
                
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
                  
            <style>
                 h1{
                     text-align:center;
                     color:black;
                 }
                 h3{
                     text-align:center;
                     color:black;
                 } 
                 h2{
                    text-align:center;
                 }
                  
            </style>
         </head>
        
         
         <body>
              <%
                      
                 
                      Locale locale = request.getLocale();
                      String language = locale.getLanguage();
                      String country = locale.getCountry();
                      
                      
                      HashMap<String, String> ita = new HashMap<String, String>();
                      ita.put("click", "Clicca sull'artista che ti piace e lascia un feedback!");
                      ita.put("song", "Canzone:");
                      ita.put("singer","Cantante");
                      ita.put("welcome","Benvenuto!");
                      
                      HashMap<String, String> eng = new HashMap<String, String>();
                      eng.put("click", "Click on the artist and leave a feedback!");
                      eng.put("song", "Song:");
                      eng.put("singer", "Singer:");
                      eng.put("welcome", "Welcome!");
                      
                      HashMap<String, String> attuale = new HashMap<String, String>();
                      
                      if(language.equals("it")){
                    	  attuale=ita;
                      }else{
                    	  attuale=eng;
                      }
                 %>
                         <!---  <img src="https://www.musicaincontatto.it/wp-content/uploads/2021/12/Festival-di-Sanremo-2022.jpg" class="card-img-top" alt="img"  width="300" height="300">-->       
                 <h1>Sanremo 2022</h1>
                 <br>
                 <br>
                 <br>
                 <h2><%=attuale.get("welcome") %> </h2>
                 <h3><%=attuale.get("click") %> </h3>
                 <br>
                 <br>
            
                
             <%
             String token=(String)session.getAttribute("token");
             if(token!="true"){
            	 dettagliCantanti details = new dettagliCantanti();
                 details.setNome("Gianni");
                 details.setCognome("Morandi");
                 details.setCanzone("Apri tutte le porte");
                 details.setImmagine("https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Gianni_Morandi_%28Italie%29%2C_Bestanddeelnr_923-3708.jpg/180px-Gianni_Morandi_%28Italie%29%2C_Bestanddeelnr_923-3708.jpg");
    
                 dettagliCantanti details1 = new dettagliCantanti();
                 details1.setNome("Achille");
                 details1.setCognome("Lauro");
                 details1.setCanzone("Domenica");
                 details1.setImmagine("https://www.oaplus.it/wp-content/uploads/2020/02/lauro-sanremo.jpg");

                 dettagliCantanti details2 = new dettagliCantanti();
                 details2.setNome("Yuman");
                 details2.setCognome("...");
                 details2.setCanzone("Perfetta così");
                 details2.setImmagine("https://www.contra-ataque.it/wp-content/uploads/2022/01/Yuman.jpeg");
                 
                 dettagliCantanti details3 = new dettagliCantanti();
                 details3.setNome("Ana");
                 details3.setCognome("Mena");
                 details3.setCanzone("Ducentomila ore");
                 details3.setImmagine("https://cdn.corrieredellosport.it/img/990/495/2022/02/01/232145139-24e052c3-06ac-4581-b32a-fb4b82c8ccfb.jpg");
                 
                 dettagliCantanti details4 = new dettagliCantanti();
                 details4.setNome("Noemi");
                 details4.setCognome("...");
                 details4.setCanzone("Ti amo non lo dire");
                 details4.setImmagine("https://www.iodonna.it/wp-content/uploads/2021/02/noemi-sanremo-2021.jpg");
                 
                 dettagliCantanti details5 = new dettagliCantanti();
                 details5.setNome("La Rappresentante di Lista");
                 details5.setCognome("...");
                 details5.setCanzone("Ciao Ciao");
                 details5.setImmagine("https://st.ilfattoquotidiano.it/wp-content/uploads/2021/02/24/La-Rappresentante-Di-Lista-1200x.png");
                 
                 dettagliCantanti details6 = new dettagliCantanti();
                 details6.setNome("Michele");
                 details6.setCognome("Bravi");
                 details6.setCanzone("Inverno dei fiori");
                 details6.setImmagine("https://www.tpi.it/app/uploads/2022/01/michele-bravi-sanremo-2022-eta-fidanzato-incidente-malattia-canzoni-instagram-x-factor-amici-vita-privata-carriera-chi-e.jpg");
                 
                 dettagliCantanti details7 = new dettagliCantanti();
                 details7.setNome("Massimo");
                 details7.setCognome("Ranieri");
                 details7.setCanzone("Lettera al di la' del mare");
                 details7.setImmagine("https://biografieonline.it/img/bio/m/Massimo_Ranieri.jpg");
                 
                 dettagliCantanti details8 = new dettagliCantanti();
                 details8.setNome("Mahmood & Blanco");
                 details8.setCognome("...");
                 details8.setCanzone("Brividi");
                 details8.setImmagine("https://img.ilgcdn.com/sites/default/files/styles/xl/public/foto/2022/02/06/1644108895-ax7mhhxuruqwa5rn-fmk-ansa.jpg?_=1644108895");
                 
                 dettagliCantanti details9 = new dettagliCantanti();
                 details9.setNome("Rkomi");
                 details9.setCognome("...");
                 details9.setCanzone("Insuperabile");
                 details9.setImmagine("https://www.contra-ataque.it/wp-content/uploads/2022/01/Rkomi-1.jpeg");
                 
                 dettagliCantanti details10 = new dettagliCantanti();
                 details10.setNome("Dargen");
                 details10.setCognome("D'amico");
                 details10.setCanzone("Dove si balla");
                 details10.setImmagine("https://media-assets.wired.it/photos/61fa2d7fe7101806f46e24c4/4:3/w_1244,h_933,c_limit/dargen_damico_arianna-tedeschi.png"); 
                 
                 dettagliCantanti details11 = new dettagliCantanti();
                 details11.setNome("Tananai");
                 details11.setCognome("...");
                 details11.setCanzone("Sesso Occasionale");
                 details11.setImmagine("https://www.caffeinamagazine.it/wp-content/uploads/2022/01/Tananai-6.jpg");
                 
                 ArrayList<dettagliCantanti> array = new ArrayList <dettagliCantanti>();
         		array.add(details);
         		array.add(details1);
         		array.add(details2);
         		array.add(details3);
         		array.add(details4);
         		array.add(details5);
         		array.add(details6);
         		array.add(details7);
         		array.add(details8);
         		array.add(details9);
         		array.add(details10);
         		array.add(details11);
         		session.setAttribute("artisti",array);
         %>

 <div class="card-group" style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(0).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(0).getNome() %> <%= array.get(0).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %>  <%=array.get(0).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Gianni_Morandi">Chi è <%=array.get(0).getNome() %> <%= array.get(0).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi:0  Voti negativi:0 </small></p>
       
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=0" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  
  <div class="card">
    <img src="<%=array.get(1).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer")%>  <%=array.get(1).getNome() %> <%= array.get(1).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(1).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/Achille_Lauro_(cantante)">Chi è <%=array.get(1).getNome() %> <%= array.get(1).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi:0 Voti negativi:0  %> </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=1" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>

  <div class="card">
    <img src="<%=array.get(2).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(2).getNome() %> <%= array.get(2).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(2).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Yuman#:~:text=Yuman%2C%20pseudonimo%20di%20Yuri%20Santos,)%2C%20%C3%A8%20un%20cantautore%20italiano.">Chi è <%=array.get(2).getNome() %> <%= array.get(2).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: Voti negativi: </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=2" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  </div>

<br>
<br>
<br>
<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(3).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(3).getNome() %> <%= array.get(3).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(3).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/Ana_Mena">Chi è <%=array.get(3).getNome() %> <%= array.get(3).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=3" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(4).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(4).getNome() %> <%= array.get(4).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(4).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/Noemi_(cantante)">Chi è <%=array.get(4).getNome() %> <%= array.get(4).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi: </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=4" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(5).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(5).getNome() %> <%= array.get(5).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(5).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/La_Rappresentante_di_Lista">Chi è <%=array.get(5).getNome() %> <%= array.get(5).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=5" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>
<br>
<br>
<br>
<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(6).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(6).getNome() %> <%= array.get(6).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(6).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Michele_Bravi">Chi è <%=array.get(6).getNome() %> <%= array.get(6).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=6" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(7).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(7).getNome() %> <%= array.get(7).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song")%> <%=array.get(7).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Massimo_Ranieri">Chi è <%=array.get(7).getNome() %> <%= array.get(7).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=7" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(8).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(8).getNome() %> <%= array.get(8).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song")%><%=array.get(8).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Mahmood">Chi è Mahmood?</a>
        <a href="https://it.wikipedia.org/wiki/Blanco_(cantante)">Chi è Blanco?</a>
        <p class="card-text"><small class="text-muted">Voti positivi: Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=8" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>
<br>
<br>
<br>
<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(9).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(9).getNome() %> <%= array.get(9).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(9).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Rkomi">Chi è <%=array.get(9).getNome() %> <%= array.get(9).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=9" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(10).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %>  <%=array.get(10).getNome() %> <%= array.get(10).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(10).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Dargen_D'Amico">Chi è <%=array.get(10).getNome() %> <%= array.get(10).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=10" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(11).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(11).getNome() %> <%= array.get(11).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %><%=array.get(11).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Tananai">Chi è <%=array.get(11).getNome() %> <%= array.get(11).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi:  Voti negativi:  </small></p>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=11" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>
            
            <% }else{   
            	

           ArrayList<dettagliCantanti> array=(ArrayList<dettagliCantanti>)session.getAttribute("artisti");
           String voto=request.getParameter("voto");
           int indice=Integer.valueOf(request.getParameter("indice")).intValue();
           
           if(request.getParameter("votopos")!=null){
        	   int aumento=array.get(indice).getPos()+1;
        	   array.get(indice).setPos(aumento);
        	  
        	   }else  if(request.getParameter("votoneg")!=null){
        	   int aumento=array.get(indice).getNeg()+1;
        	   array.get(indice).setNeg(aumento);
        	   
           }
    		session.setAttribute("artisti",array);
           %>

<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(0).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(0).getNome() %> <%= array.get(0).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(0).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Gianni_Morandi">Chi è <%=array.get(0).getNome() %> <%= array.get(0).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(0).getPos() %>Voti negativi: <%=array.get(0).getNeg() %></small></p>
       <%
       if(array.get(0).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(0).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=0" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(1).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(1).getNome() %> <%= array.get(1).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(1).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/Achille_Lauro_(cantante)">Chi è <%=array.get(1).getNome() %> <%= array.get(1).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(1).getPos() %>Voti negativi: <%=array.get(1).getNeg() %></small></p>
       <%
       if(array.get(1).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(1).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=1" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(2).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(2).getNome() %> <%= array.get(2).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(2).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Yuman#:~:text=Yuman%2C%20pseudonimo%20di%20Yuri%20Santos,)%2C%20%C3%A8%20un%20cantautore%20italiano.">Chi è <%=array.get(2).getNome() %> <%= array.get(2).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(2).getPos() %>Voti negativi: <%=array.get(2).getNeg() %></small></p>
        <%
       if(array.get(2).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(2).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=2" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>
<br>
<br>
<br>
<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(3).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(3).getNome() %> <%= array.get(3).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(3).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/Ana_Mena">Chi è <%=array.get(3).getNome() %> <%= array.get(3).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(3).getPos() %>Voti negativi: <%=array.get(3).getNeg() %></small></p>
       <%
       if(array.get(3).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(3).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=3" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(4).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %><%=array.get(4).getNome() %> <%= array.get(4).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(4).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/Noemi_(cantante)">Chi è <%=array.get(4).getNome() %> <%= array.get(4).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(4).getPos() %>Voti negativi: <%=array.get(4).getNeg() %></small></p>
       <%
       if(array.get(4).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(4).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=4" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(5).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(5).getNome() %> <%= array.get(5).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(5).getCanzone() %></p>
      <a href="https://it.wikipedia.org/wiki/La_Rappresentante_di_Lista">Chi è <%=array.get(5).getNome() %> <%= array.get(5).getCognome() %>?</a>
      <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(5).getPos() %>Voti negativi: <%=array.get(5).getNeg() %></small></p>
       <%
       if(array.get(5).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(5).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=5" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>
<br>
<br>
<br>
<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(6).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(6).getNome() %> <%= array.get(6).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(6).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Michele_Bravi">Chi è <%=array.get(6).getNome() %> <%= array.get(6).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(6).getPos() %>Voti negativi: <%=array.get(6).getNeg() %></small></p>
        <%
       if(array.get(6).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(6).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=6" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(7).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(7).getNome() %> <%= array.get(7).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %><%=array.get(7).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Massimo_Ranieri">Chi è <%=array.get(7).getNome() %> <%= array.get(7).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(7).getPos() %>Voti negativi: <%=array.get(7).getNeg() %></small></p>
        <%
       if(array.get(7).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(7).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=7" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(8).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer") %> <%=array.get(8).getNome() %> <%= array.get(8).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %> <%=array.get(8).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Mahmood">Chi è Mahmood?</a>
        <a href="https://it.wikipedia.org/wiki/Blanco_(cantante)">Chi è Blanco?</a>
        <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(8).getPos() %>Voti negativi: <%=array.get(8).getNeg() %></small></p>
         <%
       if(array.get(8).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(8).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=8" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>
<br>
<br>
<br>
<div class="card-group"style="width:75%;margin: 0 auto;">
  <div class="card">
    <img src="<%=array.get(9).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer")%> <%=array.get(9).getNome() %> <%= array.get(9).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song") %><%=array.get(9).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Rkomi">Chi è <%=array.get(9).getNome() %> <%= array.get(9).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(9).getPos() %>Voti negativi: <%=array.get(9).getNeg() %></small></p>
        <%
       if(array.get(9).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(9).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=9" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(10).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer")%><%=array.get(10).getNome() %> <%= array.get(10).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song")%> <%=array.get(10).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Dargen_D'Amico">Chi è <%=array.get(10).getNome() %> <%= array.get(10).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(10).getPos() %>Voti negativi: <%=array.get(10).getNeg() %></small></p>
        <%
       if(array.get(10).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(10).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
      <a href="cantanteselezionato.jsp?indice=10" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
  <div class="card">
    <img src="<%=array.get(11).getImmagine() %>" class="card-img-top" alt="img"  width="200" height="400">
    <div class="card-body">
      <h5 class="card-title"><%=attuale.get("singer")%>: <%=array.get(11).getNome() %> <%= array.get(11).getCognome() %> </h5>
      <p class="card-text"><%=attuale.get("song")%> <%=array.get(11).getCanzone() %></p>
       <a href="https://it.wikipedia.org/wiki/Tananai">Chi è <%=array.get(11).getNome() %> <%= array.get(11).getCognome() %>?</a>
       <p class="card-text"><small class="text-muted">Voti positivi: <%=array.get(11).getPos() %>Voti negativi: <%=array.get(11).getNeg() %> </small></p>
        <%
       if(array.get(11).getOrario()!=null)
       {
    	   out.println("<p class=\"card-text\"><small class=\"text-muted\">Orario:"+array.get(11).getOrario()+" </small></p>");
       }
       %>
      <p class="card-text"><small class="text-muted">-Sanremo 2022</small></p>
       <a href="cantanteselezionato.jsp?indice=11" class="btn btn-primary">Lascia un voto!</a>
    </div>
  </div>
</div>

    <% } %> 
               
                 
                  
         </body> 

</html>