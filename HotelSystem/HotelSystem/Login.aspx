<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelSystem.Login1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  
<head runat="server">
    <title>Login Form</title>
   <table>
       <tr>
           <td>&nbsp;</td>
           
       
       </tr>
   
        <tr>
            <td>&nbsp;</td>
        </tr>

    
        <tr>
            <td>&nbsp;</td>
        </tr>

   
        <tr>
            <td>&nbsp;</td>
        </tr>

    
        <tr>
            <td>&nbsp;</td>
        </tr>

    
        <tr>
            <td>&nbsp;</td>
        </tr>

   
        <tr>
            <td>&nbsp;</td>
        </tr>

    
        <tr>
            <td>&nbsp;</td>
        </tr>

   
        <tr>
            <td>&nbsp;</td>
        </tr>

    
        <tr>
            <td>&nbsp;</td>
        </tr>

    
        <tr>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
       <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
     
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style id="960ox">
       
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image:url("images/foun.jpg");
            background-size: 100% 100%;
            background-attachment:scroll;
            background-repeat:no-repeat;
            background-size: cover;
            background-position:center;
            overflow:hidden;  
        }
        form {
            border: 3px solid #f1f1f1;
        }
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button:hover {
            opacity: 0.8;
        }
        .cnbtn {
            background-color: #ec3f3f;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 49%;
        }
        .lgnbtn {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 50%;
        }
        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }
        img.avatar {
            width: 40%;
            border-radius: 50%;
        }
        .container {
            padding: 5px;
            
        }
        span.psw {
            float: right;
            padding-top: 16px;
        }
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cnbtn {
                width: 100%;
            }
        }
        .frmalg {
            margin: auto;
            width: 40%;
            background-color:gainsboro;
            
        }
    </style>

</head>
<body>
    

        <form id="form2" runat="server" class="frmalg" >

        <div class="container">
            <center>  <h3>Login form </h3>

            </center>
              
           
            <label id="lbluname"><b>Username</b></label>
            <asp:TextBox runat="server" ID="txt_username" placeholder="Enter Username"></asp:TextBox>
           
            <label id="lblpassword"><b>Password</b></label>
            <asp:TextBox runat="server" ID="txt_password" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
           
            <asp:Button runat="server" ID="btn_Login" CssClass="lgnbtn" Text="Login" OnClick="btn_Login_Click" />
            <asp:Button runat="server" ID="btn_Registration" Text="Registration" class="cnbtn" OnClick="btn_Registration_Click" />
        </div>
    </form>
     

</body>
        
</html>
