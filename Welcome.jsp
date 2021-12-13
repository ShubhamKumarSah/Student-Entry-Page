<!DOCTYPE html>
<html>
    <head>
        <title>
            Online Class - Student entry form
        </title>
    </head>
    <body>
        <style>
            table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
            }

            td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
            }

            tr:nth-child(even) {
            background-color: #dddddd;
            }

            body
            {
                margin: 0;
                background-image: url("https://2.bp.blogspot.com/-asDVZSQrCN0/UYGs8vg36ZI/AAAAAAAAHR8/iZcBCx3oiBQ/s0/background.jpg");
            }

            h1
            {
                text-align: center;
                
            }

            p
            {
                text-align: center;
                color: rgb(72, 72, 72);
            }

            .box
            {
                background: #fbffe3;
                display: block;
                margin: 0 auto;
                border: 2px solid rgba(163, 153, 153, 0.857);
                width: 60%;
                padding: 15px;
                box-shadow: 20px 20px 20px grey;
                border-radius: 25px;
            }

            .box2
            {
                background: #fbffe3;
                display: block;
                margin: 0 auto;
                border: 2px solid rgba(163, 153, 153, 0.857);
                width: 60%;
                padding: 15px;
                margin-top: 40px;
                box-shadow: 20px 20px 20px grey;
                border-radius: 25px;
            }

            .box2 p{
                text-align: left;
            }

            .alert
            {
                text-align: left;
            }

            .red{
                color: red;
            }

            .btn
            {
                font-size: 15px;
                margin: 0 auto;
                width: 50%;
                background: #06a8ff;
                border-radius: 30px;
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 10px;
                padding-bottom: 10px;
                text-align: center;
                color: #fbffe3;
                font-weight: bolder;
            }

            .btn:hover
            {
                cursor: pointer;
                background: transparent;
                border: 2.5px solid #84ccde;
                color: #06a8ff;
                box-shadow: 5px 5px 5px #06a8ff;
            }

            footer
            {
                position:absolute;
                padding-bottom: 15px;
                bottom:0;
                width:100%;
                height:60px;   /* Height of the footer */
                background:#6cccff;
                color: black;
                font-weight: bolder;
            }

        </style>
        <h1>Internet Technology Class 2021 (Online-Mode)</h1>
        <div class="box">
            <%
                String fname=request.getParameter("fname");
                String username=request.getParameter("username");
                String password=request.getParameter("password");
                String gender=request.getParameter("gender");
                String Address=request.getParameter("Address");
                String Language=request.getParameter("Language");
                String s[] = request.getParameterValues("Language");
                
            %>

            <h1>Welcome <%= fname%> </h1>
            <table>
                <tr>
                  <th style="width:35%">Address</th>
                  <th>E-Mail</th>
                  <th>Gender</th>
                  <th style="width:25%">Language</th>
                </tr>
                <tr>
                  <td><%=Address%></td>
                  <td><%=username%></td>
                  <td><%=gender%></td>
                  <td><%if (s != null && s.length != 0) {
                    for (int i = 0; i < s.length; i++) {
                    out.println(s[i]+",");
                    }
                    }%></td>
                </tr>
                
              </table>
                
        </div>

        <div class="box2">
            <p>
                This class conduct by <a href="https://dmc.ac.in/faculty/lrcompsc/">Lakshmi Kanta Rana Sir</a><br>
                Students are advised to join the class, by following this link <a href="#">demo.com</a>

                The class routine is as follows :

                <br>
                <br>
            </p>

            <table>
                <tr>
                  <th style="width:50%; text-align: center;">Day</th>
                  <th style="width:50%; text-align: center;">Time</th>
                </tr>
                <tr>
                  <td>Tuesday</td>
                  <td>11 AM - 01 PM</td>
                </tr>
                <tr>
                    <td>Thursday</td>
                    <td>11 AM - 01 PM</td>
                  </tr>
                
              </table>
        </div>
        
        <footer>
            <p>
                This Responsive webform has been created by <b style="color: blue">Shubham & Shivam</b> All Rights Reserved
            </p>
        </footer>
    </body>
</html>