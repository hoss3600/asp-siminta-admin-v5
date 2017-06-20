

<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <!--  page-wrapper -->

        <div id="page-wrapper">
       
            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header">Activity</h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                        <i class="fa fa-folder-open"></i><b>&nbsp;Hello ! </b>Welcome Back <b>Hossam Ahmed </b>
 <i class="fa  fa-pencil"></i>
                    </div>
                </div>
                <!--end  Welcome -->
            </div>


            <div class="row">
                <!--quick info section -->
                <div class="col-lg-3">
                   
                </div>
                <!--end quick info section -->
            </div>
            <!--here we go mdddddddddddddddddddddddddddddddddddddddddddddddddddd -->

              <div class="row" id="Sale" runat="server">
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Sales department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">

                                    <div class="form-group">
                                        <label>Order ID</label>
                                        <asp:TextBox ID="O_ID" class="form-control" placeholder="Enter the order ID" runat="server" Enabled="True"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="O_ID" CssClass="text-danger" ErrorMessage="Please enter order ID. " />
                                    </div>

                                    <div class="form-group">
                                        <label>Order type</label>

                                        <asp:DropDownList ID="O_T" runat="server" CssClass="form-control">
                                            <asp:ListItem Text="Please select" Value="0"></asp:ListItem>
                                            <asp:ListItem Text="Tank" Value="Tank"></asp:ListItem>
                                            <asp:ListItem Text="Frame" Value="Frame"></asp:ListItem>
                                            <asp:ListItem Text="Chekered plate" Value="Chekered plate"></asp:ListItem>
                                            <asp:ListItem Text="Ladder" Value="Ladder"></asp:ListItem>
                                            <asp:ListItem Text="Pipe support" Value="Pipe support"></asp:ListItem>
                                            <asp:ListItem Text="Handrails" Value="Handrails"></asp:ListItem>
                                            <asp:ListItem Text="Gratings" Value="Gratings"></asp:ListItem>
                                            <asp:ListItem Text="Custom design" Value="Custom design"></asp:ListItem>
                                        </asp:DropDownList>

                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="O_T" InitialValue="0" CssClass="text-danger" ErrorMessage="You must choose a category. " />

                                    </div>
                                    <div class="form-group">
                                        <!-- this input field should appear when custom design is selected as a type -->
                                        <label>Custom design details</label>
                                        <asp:TextBox ID="CDD" runat="server" class="form-control" placeholder="Enter the custom design details"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CDD" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div class="form-group">
                                        <label>Tonnage</label>
                                        <asp:TextBox ID="Ton" runat="server" class="form-control" placeholder="Enter the weight"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Ton" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div class="form-group">
                                        <label>Delivery date</label>
                                        <asp:TextBox ID="DT" runat="server" class="form-control" placeholder="Enter the Delivery date" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="DT" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>

                                    <div class="form-group">
                                        <label>Drawings</label>
                                        <input type="file"/>
                                    </div>
                                    <div class="form-group">
                                    </div>
                                    <asp:Button ID="sales_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="sales_submit_Click" />
                                    <button type="reset" class="btn btn-success">Reset</button>
                                  
                                     <asp:Button ID="Find_R" runat="server" Text="FindResult" class="btn btn-primary" CausesValidation="False" OnClick="Find_R_Click" />
                                </div>
                                <div class="col-lg-6">

                                    <div class="form-group">
                                        <label>Client ID</label>
                                        <asp:TextBox ID="C_ID" runat="server" class="form-control" placeholder="Enter the client id"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="C_ID"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div class="form-group">
                                        <label>Client name</label>
                                        <asp:TextBox ID="C_N" runat="server" class="form-control" placeholder="Enter the client name"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="C_N" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div class="form-group">
                                        <label>Contact number</label>
                                        <asp:TextBox ID="CON_N" runat="server" class="form-control" placeholder="Enter the contact number" ></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CON_N" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                      <div class="form-group">
                                        <label>Company name</label>
                                        <asp:TextBox ID="COM_N" runat="server" class="form-control" placeholder="Enter the contact number"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="COM_N"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div class="form-group">
                                        <label>Current date</label>
                                        <asp:TextBox ID="C_Date" runat="server" class="form-control" placeholder="Enter the contact number"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="C_Date"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div>
                                        <h3>Expert system result</h3>
                                        <asp:Label ID="Result" runat="server" Text="A"></asp:Label>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Form Elements -->
                </div>
            </div>
                        <!-- new form for Engineering department -->   
               <div class="row" id="Eng" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                            Engineering department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>Orders drawings:</label>
                                            
                                       
                                       
                                        <div class="form-group">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Drawing file</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <!-- this sile should be downloadable -->
                                            <td>file.PDF</td> 
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                                        </div>

                                        </div>
                                        <div class="form-group">
                                            
                                            <label>Required materials</label>

                                            <!-- requested material should appear whenever add material button clicked -->
                 <asp:DropDownList ID="engineeringValedation" runat="server" CssClass="form-control">
                <asp:ListItem Text="Please select" Value="0"></asp:ListItem>
                <asp:ListItem Text="Material-1" Value=""></asp:ListItem>
                <asp:ListItem Text="Material-2" Value=""></asp:ListItem>
                <asp:ListItem Text="Material-3" Value=""></asp:ListItem>
                <asp:ListItem Text="Material-4" Value=""></asp:ListItem>
                <asp:ListItem Text="other material" Value=""></asp:ListItem>
                </asp:DropDownList>
               
                <asp:RequiredFieldValidator runat="server" ControlToValidate="engineeringValedation" InitialValue="0"  CssClass="text-danger" ErrorMessage="You must choose a material. " />
                                                
                                            
                                        </div>
                                        <asp:Button ID="Engineering_submit" runat="server" Text="Submit" class="btn btn-primary" />
                                        <button type="reset" class="btn btn-success">Reset</button>
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 

                                     
                                      <asp:Button ID="engineering_add_material" runat="server" Text="Add material" class="btn btn-primary" />
                                                <!-- if Eng chlicks on this button, another selection must me appear -->
                                    
                                </div>
                                <div class="col-lg-6">
                                   
                                     <div class="form-group">
                                         <!-- it will be shown if the eng chose other material -->
                                            <label>Other materials</label>
                                             <textarea class="form-control" rows="3"></textarea>
                                        </div>
                                    <div>
                                        
                                       
                                  
                                       </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Eng Form Elements -->
                </div>
            </div>
                            <!-- new form for Accounting department -->
           <div class="row" id="Acc" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Accounting department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <h2>Payment</h2>
                                        </div>
                                       
                                        <div class="form-group">
                                           
                                    
                                            <label>Amount of payment</label>
                                            <asp:TextBox ID="paymentAmout" runat="server" class="form-control" placeholder="Enter the amount of received money"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="paymentAmout"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                        <div class="form-group">
                                            <label>Date of payment</label>
                                             <asp:TextBox ID="paymentDate" runat="server" class="form-control" placeholder="Enter the date of receive"></asp:TextBox>     
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="paymentDate"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                    <div class="form-group">
                                            <label>Payment method</label>
                                             <asp:TextBox ID="paymentMethod" runat="server" class="form-control" placeholder="Enter the sourse of receiver money"></asp:TextBox> 
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="paymentMethod"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                    
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    <br />

                                        <asp:Button ID="accounting_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="accounting_submit_Click" CausesValidation="False" />
                                        <button type="reset" class="btn btn-success">Reset</button>
                                    
                                </div>
                                <div class="col-lg-6">
                                   
                                     <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body yellow">
                            <i class="fa fa-bar-chart-o fa-3x"></i>
                         <!--   <h3>SAR 20,741</h3> -->
                            <asp:Label ID="Balancee" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title">Budget
                            </span>
                        </div>
                    </div>
                                    <div class="form-group">
                                            <h2>Outgoings</h2>
                                        </div>
                                       
                                        <div class="form-group">
                                           
                                    
                                            <label>Amount of outgoing</label>
                                             <asp:TextBox ID="outgoingAmount" runat="server" class="form-control" placeholder="Enter the amount of outgoing money"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="outgoingAmount"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                        <div class="form-group">
                                            <label>Date of outgoing</label>
                                             <asp:TextBox ID="outgoingDate" runat="server" class="form-control" placeholder="Enter the date of outgoing money"></asp:TextBox> 
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="outgoingDate"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                    <div class="form-group">
                                        <asp:Label ID="L11" Visible="false" runat="server" ForeColor="#009933">Successfuly added !</asp:Label>
                                        </div>
                                     
                                       
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>

             <!-- new form for HR department -->
         <div class="row" id="HR" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Human Resources department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <asp:TextBox ID="HRE_ID" runat="server" class="form-control" placeholder="Employee ID"></asp:TextBox> 
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="HRE_ID"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                            
                                        </div>
                                       
                                        <div class="form-group">

                                            <asp:GridView ID="Grid1" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                           
                      


                                        </div>
                                       
                                    
                                </div>
                                <div class="col-lg-6">
                                    <div>
                                        
                                <asp:Button ID="HR_search" runat="server" Text="Search" class="btn btn-primary" CausesValidation="False" OnClick="HR_search_Click" />
                                    </div>
                                   <div>
                                       <br />
                                       <br />

                                     <label>Working hours</label>
                                            <asp:TextBox ID="WH" runat="server" class="form-control" placeholder="Enter the new working hours"></asp:TextBox>  
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="WH" InitialValue="0"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                     <div>
                                     <label>Overtime</label>
                                            <asp:TextBox ID="OV" runat="server" class="form-control" placeholder="Enter the new overtime"></asp:TextBox>  
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="OV" InitialValue="0"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>

                                    
                                      <asp:Button ID="HR_submit" runat="server" Text="Submit" class="btn btn-primary" OnClick="HR_submit_Click" />
                                        <button type="reset" class="btn btn-success">Reset</button>
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>

             <!-- new form for Procurement department --> 
       <div class="row" id="Proc" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Procurement department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>List of supliers</label>
                                            <asp:GridView ID="GridViewsupliers" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                        </div>
                                    <div class="form-group">
                                        <!-- one any one of these button is clicked, fields should appear at the other side -->
                                        <asp:Button ID="procurement_search" runat="server" Text="Search for suplier" class="btn btn-primary" OnClick="procurement_search_Click" CausesValidation="True" />
                                        <asp:Button ID="procurement_add_suplier" runat="server" Text="Add suplier" class="btn btn-primary" />
                                        <asp:Button ID="procurement_remove_sublier" runat="server" Text="Remove suplier" class="btn btn-primary" />
                                        

                                    </div>
                                       
                                        <div class="form-group">
                                           <label>ordered materials</label>
                                           <asp:GridView ID="GridViewOM" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                        </div>
                                        <div class="form-group">
                                            <label>Stored materials</label>
                                           <asp:GridView ID="GridViewSM" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>          
                                        </div>
                                   <div class="form-group">
                                                       
                                        </div>
                                    
                                      
                                </div>
                                <div class="col-lg-6">
                                
                                    <div>
                                    <!-- if search button is clicked -->
                                    <label>Name of suplier</label>
                                    <asp:TextBox ID="NameOfSuplier" runat="server" class="form-control" placeholder="Enter the name of suplier which you're looking for"></asp:TextBox>  
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="NameOfSuplier"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>

                                    <!-- if add suplier button is clicked
                                    <div>
                                         <label>Name of suplier</label>
                                    <asp:TextBox ID="procurement2" runat="server" class="form-control" placeholder="Enter the name of suplier you wish to add"></asp:TextBox>  
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="procurement2"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div> -->

                                     <!-- if remove suplier button is clicked
                                    <div>
                                         <label>Name of suplier</label>
                                    <asp:TextBox ID="procurement3" runat="server" class="form-control" placeholder="Enter the name of suplier you wish to remove"></asp:TextBox>  
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="procurement3"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>

             <!-- new form for Storage department --> 
        <div class="row" id="Stor" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Storage department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                        <div class="form-group">
                                            <label>List of materials</label>
                                            <asp:GridView ID="storage_Gridview" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                        </div>
                                   
                                      
                                </div>
                                <div class="col-lg-6">
                                 <div>
                                        <h2>Add material</h2>

                                    </div>
                                       
                                        <div class="form-group">
                                           <label>Material name</label>
                                           <asp:TextBox ID="storage_material_name" runat="server" class="form-control" placeholder="Enter the material name"></asp:TextBox>  
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_material_name"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                        <div class="form-group">
                                            <label>Quantity</label>
                                            <asp:TextBox ID="storage_quantity" runat="server" CssClass="form-control" placeholder="Enter the amount"></asp:TextBox> 
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_quantity" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                    <div class="form-group">
                                        <label>Tool ID</label>
                                        <asp:TextBox ID="storage_tool_id" CssClass="form-control" placeholder="Enter the tool ID" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_tool_id"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                    <div class="form-group">
                                        <label>Used Tools</label>
                                        <asp:TextBox ID="storage_tool_used" CssClass="form-control" placeholder="Enter the used tools" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_tool_used"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                        <div class="form-group">
                                        <label>Size Details</label>
                                            <asp:TextBox ID="storage_size" CssClass="form-control" placeholder="Enter the size details" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_size"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                         </div>
                                   <div class="form-group">
                                            <label>Store Number</label>
                                         <asp:DropDownList ID="store_number_list" runat="server" CssClass="form-control">
                                         <asp:ListItem Text="Please select" Value="0"></asp:ListItem>
                                         <asp:ListItem Text="A" Value="1"></asp:ListItem>
                                         <asp:ListItem Text="B" Value="2"></asp:ListItem>
                                         </asp:DropDownList>
               
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="store_number_list" InitialValue="0"  CssClass="text-danger" ErrorMessage="You must choose a storage. " />
                                        </div>
                                     <div class="form-group">
                                            <label>Roof number</label>
                                          <asp:TextBox ID="storage_roof" runat="server" class="form-control" placeholder="Enter the roof number"></asp:TextBox> 
                                         <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_roof"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                        </div>
                                    <div class="form-group">
                                        <label>Date</label>
                                        <asp:TextBox ID="storage_date" CssClass="form-control" placeholder="YYYY-MM-DD" runat="server" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_date"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                    </div>
                                    <div class="form-group">
                                        <label>Cost</label>
                                        <asp:TextBox ID="storage_cost" CssClass="form-control" placeholder="Enter the material cost" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="storage_quantity" CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                       </div>
                                    <asp:Button ID="storage_add_material" runat="server" Text="Add material" class="btn btn-primary" OnClick="storage_add_material_Click" />
                                    <button type="reset" class="btn btn-success">Reset</button>
                                    &nbsp&nbsp<asp:Label ID="add_material_success" runat="server" Visible="false" Font-Size="Large" ForeColor="Green" Text="Submit Successful"></asp:Label>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>

            <!-- new form for Production department --> 
          <div class="row" id="Prod" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Production department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>Current products</label>
                                           
                               <asp:GridView ID="GridViewCurrProd" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                        </div>
                                        
                                        <div class="form-group">
                                           <label>Product details</label> 
                                                <!-- used material/ quantity/ # of employees/ working hrs/ request overtime -->
                                            
                                            <asp:GridView ID="GridViewProducSsearch" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                        </div>

                                     <div class="form-group">
                                          
                                        </div>
                                      
                                </div>
                                <div class="col-lg-6">
                                 <div class="form-group">
                                           <label>Product number</label>
                                           <asp:TextBox ID="ProductSearch" runat="server" class="form-control" placeholder="Enter the product number that you wish to search for"></asp:TextBox>  
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductSearch"  CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                           <asp:Button ID="S_ID" runat="server" Text="Search for product" class="btn btn-primary" OnClick="product_search_Click" CausesValidation="True" />
                                           </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>
            </div>

              <!-- new form for Shipping department --> 
            <div class="row" id="Ship" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Shipping department
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>Shipments</label>
                                            <asp:GridView ID="shipment_Gridview" class="table table-striped table-bordered table-hover" runat="server"></asp:GridView>
                                            
                                        </div>
                                        
                                       

                                     <div>
                                           <label>Ordered material</label> 
                                                 <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Ordered item ID</th>
                                            <th>Quantity</th>
                                            <th>Date of order</th>
                                            <th>Status</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                    </tbody>
                                </table>
                                        </div>
                                      
                                </div>
                                <div class="col-lg-6">
                                
                                </div>
                            </div>
                        </div>
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>

             <!-- new form for Admin department --> 
         <div class="row" id="Ad" runat="server"> 
                <div class="col-lg-12">
                    <!-- Form Elements -->
                    <div class="panel panel-default">  
                        <div class="panel-heading">
                             Employees Information
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    
                                        <div class="form-group">
                                            <label>Employee number</label>
                                            <asp:TextBox ID="employees_information1" runat="server" class="form-control" placeholder="Enter the employee name"></asp:TextBox> 
                                            <asp:RequiredFieldValidator  runat="server" ControlToValidate="employees_information1"   CssClass="text-danger" ErrorMessage="Please don't leave it empty. " />
                                           <asp:Label ID="employees_informationValidator" runat="server" Text= "Label" Visible="False" CssClass="text-danger" style="float: left;">User Not Found</asp:Label>
                                            
                                        </div>
                                        <hr />
                                        <div>
                                        
                                        <div class="form-group"><label>Employee department:</label>
                                             <asp:TextBox ID="emp_dep" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox></div>

                                        <div class="form-group"><label>Employee name:</label>
                                             <asp:TextBox ID="emp_name" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/>
                                        </div>
                                            <div class="form-group"><label>Date of birth:</label>
                                                <asp:TextBox ID="emp_birth" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None" TextMode="Date"></asp:TextBox><br/></div>
                                            <div class="form-group"><label>Address:</label>
                                                 <asp:TextBox ID="emp_address" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/></div>
                                            <div class="form-group"><label>Phone number:</label>
                                                 <asp:TextBox ID="emp_phone" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/></div>
                                            <div class="form-group"><label>working type:</label>
                                                 <asp:TextBox ID="emp_details" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/></div>
                                            <div class="form-group"><label>Work hourse:</label>
                                                 <asp:TextBox ID="emp_hrs" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/></div>
                                            <div class="form-group"><label>Working days:</label>
                                                 <asp:TextBox ID="emp_days" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/></div>
                                            <div class="form-group"><label>Salary:</label>
                                                 <asp:TextBox ID="emp_salary" runat="server" Text="" Enabled="false"  Visible="false" BackColor="White" BorderStyle="None"></asp:TextBox><br/></div>
                                                <br />
                                                <div class="form-group">
                                            <asp:Button ID="employees_information_edit" runat="server" Text="Edit" class="btn btn-primary" Visible="false" OnClick="employees_information_edit_Click"/>
                                            <asp:Button ID="employees_information_delete" runat="server" Text="Delete" class="btn btn-primary" Visible="false" OnClick="employees_information_delete_Click"/>
                                            <asp:Button ID="employees_information_block" runat="server" Text="Block" class="btn btn-primary" Visible="false" OnClick="employees_information_block_Click" />
                                            <asp:Button ID="employees_information_save" runat="server" Text="Save" class="btn btn-primary" Visible="false" OnClick="employees_information_save_Click" />
                                                </div>
                                        </div>

                                     <div>
                                          
                                        </div>
                                      
                                </div>
                               
                                    <br />
                                <div class="form-group">
                                 <asp:Button ID="employees_information_search" runat="server" Text="Search" class="btn btn-primary" OnClick="employees_information_search_Click" />
                                </div>             
                            </div>
                                              
                        </div>
                            
                    </div>
                     <!-- End Form Elements -->
                </div>
            </div>

        </div>
        <!-- end page-wrapper -->
   
</asp:Content>


