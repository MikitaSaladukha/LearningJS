<%--
  Created by IntelliJ IDEA.
  User: mikkita
  Date: 21.11.2023
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

    function getFile(myCallback) {
        let req = new XMLHttpRequest();
        req.onload = function() {
            if (req.status == 200) {
                myCallback(this.responseText);
            } else {
                myCallback("Error: " + req.status);
            }
        }
        req.open('GET', "document2.html");
        req.send();
    }

    getFile(myDisplayer);


    let x = 15 * 5;

    console.log(JSON.stringify(module));
</script>







</body>
</html>
