console.log("run run run");

//$(window.parent.main.document).find('p').text("finally!!!!!!!!!!!!!!!!!!!888888888888888888888");
    //use XHR to load
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.open("get", "catalog.xml", false);
    xmlhttp.send(null);
    var xmldom = xmlhttp.responseXML;
    
    xmlhttp = new XMLHttpRequest();
    xmlhttp.open("get", "default.xsl", false);
    xmlhttp.send(null);
    var xsltdom = xmlhttp.responseXML;  

    var processor = new XSLTProcessor();
    processor.importStylesheet(xsltdom);

    var flag=0;

    $(".search").on("click", function(){
        
        if(flag==0){
        window.open('searchbar.html', 'main');
        flag=1;
        }else{
    //var main = document.getElementsByName("main");
    $(window.parent.main.document).find('div').html("");  
    //get the main frame of the frameset 
    var main = $(window.parent.main.document).find('div');   

  
    var searchword = $(".searchword").val();

    console.log("searchword is: ", searchword);
    processor.setParameter(null, "message", searchword);
    var fragment = processor.transformToFragment(xmldom, document);     
    
    $(main).append(fragment); }
    
    }); 



console.log("as fast as you can");