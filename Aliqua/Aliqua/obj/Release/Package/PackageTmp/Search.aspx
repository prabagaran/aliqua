<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="WebApplication1.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrap">
       
       <div class="container">
          <!-- aside -->
          <aside>
             <h3>Categories</h3>
             <ul class="categories">
                <li><span><a href="#">Programs</a></span></li>
                <li><span><a href="#">Student Info</a></span></li>
                <li><span><a href="#">Teachers</a></span></li>
                <li><span><a href="#">Descriptions</a></span></li>
                <li><span><a href="#">Administrators</a></span></li>
                <li><span><a href="#">Basic Information</a></span></li>
                <li><span><a href="#">Vacancies</a></span></li>
                <li class="last"><span><a href="#">Calendar</a></span></li>
             </ul>
             <form action="" id="newsletter-form">
                <fieldset>
                <div class="rowElem">
                   <h2>Newsletter</h2>
                   <input type="email" value="Enter Your Email Here" onFocus="if(this.value=='Enter Your Email Here'){this.value=''}" onBlur="if(this.value==''){this.value='Enter Your Email Here'}" >
                   <div class="clear"><a href="#" class="fleft">Unsubscribe</a><a href="#" class="fright" onClick="document.getElementById('newsletter-form').submit()">Submit</a></div>
                </div>
                </fieldset>
             </form>
             <h2>Fresh <span>News</span></h2>
             <ul class="news">
                <li><strong>June 30, 2010</strong>
                   <h4><a href="#">Sed ut perspiciatis unde</a></h4>
                   Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque. </li>
                <li><strong>June 14, 2010</strong>
                   <h4><a href="#">Neque porro quisquam est</a></h4>
                   Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit consequuntur magni. </li>
                <li><strong>May 29, 2010</strong>
                   <h4><a href="#">Minima veniam, quis nostrum</a></h4>
                   Uis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae. </li>
             </ul>
          </aside>
          <!-- content -->
          <section id="content">
             <div id="banner">
                <h2>Professional <span>Online Education <span>Since 1992</span></span></h2>
             </div>

             <div class="inside">
                <form id="form1" runat="server">
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=AliquaEntitiesContext" DefaultContainerName="AliquaEntitiesContext" EnableFlattening="False" EntitySetName="CollegeInfoes">
                    </asp:EntityDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="EntityDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Principal_Name" HeaderText="Principal_Name" SortExpression="Principal_Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                            <asp:BoundField DataField="BankAccount" HeaderText="BankAccount" SortExpression="BankAccount" />
                            <asp:BoundField DataField="BankName" HeaderText="BankName" SortExpression="BankName" />
                            <asp:TemplateField HeaderText="Department">
                                <ItemTemplate>
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSource='<%# Eval("DepartmentInfoes") %>'>
                                        <Columns>
                                            <asp:DynamicField DataField="BranchName" HeaderText="BranchName" />
                                            <asp:DynamicField DataField="BranchCode" HeaderText="BranchCode" />
                                        </Columns>
                                    </asp:GridView>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>

                    <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" allowsorting="true"
                               onsorting="TaskGridView_Sorting"
                         >
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </form>
             </div>

          </section>
       </div>
    </div>
    <script type="text/javascript"> Cufon.now(); </script>    
</asp:Content>
