<!-- fizaboun@uth.gr-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
    	<meta charset="UTF-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    	<title>fizaboun/3w lesson</title>
    	<meta name="description" content="fizaboun/ZaaBI_AlonSo">
    	<link rel="stylesheet" href="lib/c/styles.css">
    	<meta property="og:site_name" content="fizaboun/3w lesson"/>
    	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>    </head>
<body>
		<jsp:useBean id="totalbean" scope="session" class="sources.totalCounter" />
        <jsp:setProperty name="totalbean" property="cafe" param="itemcafecnt" />
        <jsp:setProperty name="totalbean" property="sugar" param="itemsugarcnt" />         
        <jsp:setProperty name="totalbean" property="water" param="itemwatercnt" />   
        <jsp:useBean id="itembean" scope="session" class="sources.itemsCounter" />
        <jsp:setProperty name="itembean" property="cafe" param="itemcafecnt"/>
        <jsp:setProperty name="itembean" property="sugar" param="itemsugarcnt" />         
        <jsp:setProperty name="itembean" property="water" param="itemwatercnt" />   



   	    <div class="background"></div>

        <div id="heading">Fizaboun live shopping basket</div>

        <div id="currencyBox">
         <form action="index.jsp">
            <table width="755" border="0">
                <thead class="bordhd">
                    <tr>
                        <th>Προϊόντα</th>
                         <th>Τιμές</th>
                         <th>Ποσότητα</th>
                        <th>Σύνολο</th>
                    </tr>
                </thead>
                </br>
                <tbody class="zaab">
                    <tr>
                        <td>> cafe</td>
                        <td>18.5</td>
                        <td><input type="text" name="itemcafecnt" value=<jsp:getProperty name="itembean" property="cafe"/> /></td>
                        <td><jsp:getProperty name="totalbean" property="cafe"/></td>
                    </tr>
                    <tr>
                        <td>> sugar</td>
                        <td>6.95</td>
                        <td><input type="text" name="itemsugarcnt" value=<jsp:getProperty name="itembean" property="sugar"/> /></td>
                        <td><jsp:getProperty name="totalbean" property="sugar"/></td>
                    </tr>
                    <tr>
                        <td>> water</td>
                        <td>1.29</td>
                        <td><input type="text" name="itemwatercnt" value=<jsp:getProperty name="itembean" property="water"/> /></td>
                        <td><jsp:getProperty name="totalbean" property="water"/></td>
                    </tr>
                    <tr class="bordhd">
                        <td>Total</td>
                        <td></td>
                        <td></td>
                        <td><jsp:getProperty name="totalbean" property="sum" /></td>
                    </tr>
                </tbody>
            </table> 
        <input type="submit" name="submit" id="submit" value="Show me the total!">
        <input type="button" name="code" id="code" value="Grab the code!">
        <a href="/report.html"><input type="button" name="code" id="report" value="Show me the report!"></a>
		</form>
      	</div>
    </body>
</html>
