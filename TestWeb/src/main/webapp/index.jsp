<%--
  Created by IntelliJ IDEA.
  User: mikkita
  Date: 21.11.2023
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    table,th,td {
        border : 1px solid black;
        border-collapse: collapse;
    }
    th,td {
        padding: 5px;
    }
</style>
<body>
<h1>JavaScript Modules</h1>

<p id="demo"></p>

<p id="demo2"></p>

<p id="demo4"></p>

<script type="module">
    // import message from "./message.js";
    // import { name, age } from "./person.js";
    import {name,age, message, message2} from "./my.js";
    //import {message, message2} from "./my.js";




    module.message=message();
    module.message2=message2();
    window.module.name=name;
    window.module.age=age;
    //document.getElementById('myImage').src=myFunction();
    document.getElementById("demo2").innerHTML = x;
    console.log("here is console");
    document.getElementById("demo2").innerHTML = "temporal text";
    document.getElementById("demo4").innerHTML = "text inside before module assignment";


    document.getElementById("demo4").innerHTML = window.module.message+ "<br>" + "name: " + window.module.name + " age: " + window.module.age +
        "<br>" +window.module.message2;
</script>

<script type="text/javascript">

    var module={};

    function myFunction() {
        document.getElementById("demo2").innerHTML = "New Paragraph 3.";
        console.log("here is console3");
        return "pic_bulbon.gif"
    }

    function myDisplayer(some) {
        document.getElementById("demo").innerHTML = some;
    }

    let myPromise = new Promise(function(myResolve, myReject) {
        let req = new XMLHttpRequest();
        req.open('GET', "document2.html");
        req.onload = function() {
            if (req.status == 200) {
                myResolve(req.response);
            } else {
                myReject("File not Found");
            }
        };
        req.send();
    });

    myPromise.then(
        function(value) {myDisplayer(value);},
        function(error2) {myDisplayer(error2);}
    );


    let x = 15 * 5;

    console.log(JSON.stringify(module));
</script>

<script type="text/javascript" src="js/myScript12.js">
</script>

<script type="text/javascript" src="js/myScript123.js">
</script>

<h1 id="id1">Here color will change</h1>


<button type="button"
        onclick="document.getElementById('id1').style.color=func()">
    Click Me To Change Color!</button>


<button type="button"
        onclick="document.getElementById('id1').innerHTML=func2()">
    Click Me To write rgb Color Numbers!</button>

<h2>The XMLHttpRequest Object</h2>

<button type="button" onclick="loadDoc()">Get my CD collection</button>
<br><br>
<table id="demoTable"></table>

<script>
    function loadDoc() {
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            myFunction(this);
        }
        xhttp.open("GET", "cd_catalog.xml");
        xhttp.send();
    }
    function myFunction(xml) {
        const xmlDoc = xml.responseXML;
        const x = xmlDoc.getElementsByTagName("CD");
        let table="<tr><th>Artist</th><th>Title</th><th>Year</th></tr>";
        for (let i = 0; i <x.length; i++) {
            table += "<tr><td>" +
                x[i].getElementsByTagName("ARTIST")[0].childNodes[0].nodeValue +
                "</td><td>" +
                x[i].getElementsByTagName("TITLE")[0].childNodes[0].nodeValue +
                "</td><td>" +
                x[i].getElementsByTagName("YEAR")[0].childNodes[0].nodeValue +
                "</td></tr>";
        }
        document.getElementById("demoTable").innerHTML = table;
    }
</script>
</body>
</html>
