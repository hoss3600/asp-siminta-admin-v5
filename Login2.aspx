<%@ Page Language="C#" AutoEventWireup="True" CodeFile="Login2.aspx.cs" CodeBehind="Login2.aspx.cs" Inherits="Login2" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
   
   
    <link href="assets/css/style2.css" rel="stylesheet" type='text/css' />
   

        <meta charset="utf-8">
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->

</head>


   <body >

	 <div class="main">
		<div class="login-form">
			<h1>Login</h1>
					
				<form id="A" runat=server>
						
                    <div class="form-group">
                    <asp:TextBox ID="Login_E_ID" runat="server" class="text" Placeholder="Employee ID" ></asp:TextBox>
               	&nbsp;	&nbsp;  <asp:RequiredFieldValidator runat="server" ControlToValidate="Login_E_ID" CssClass="text-danger" ErrorMessage="ID field is required." />
                                       
                     </div>
                   
                   <div class="form-group">
                     <asp:TextBox ID="Login_P" runat="server" class="text" TextMode="Password" Placeholder="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ControlToValidate="Login_P" CssClass="text-danger" ErrorMessage="Password field is required." />                      
                      </div>
                   
					<div class="submit">
							
                        <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click"  />
                       <br />
                      <center> <asp:Label ID="Label1" runat="server" Text= "Label" Visible="False" ForeColor="#CC3300">The username or password is uncorrect</asp:Label> </center>  
                        <center> <asp:Label ID="Label2" runat="server" Text= "Labe2" Visible="False" ForeColor="#CC3300">The user is Blocked, contact the adminstrator</asp:Label> </center>
					</div>	
	                 	<p><a href="/R_P.aspx">Forgot Password ?</a>

				</form>
			</div>
			
			
		</div>
		
		 		
</body>


</html>
