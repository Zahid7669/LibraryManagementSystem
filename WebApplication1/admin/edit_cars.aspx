<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="edit_cars.aspx.cs" Inherits="WebApplication1.admin.edit_cars" %>


<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Update Details</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                               
                                  
                                  <form action="" id="fo1" runat="server" method="post" novalidate="novalidate">
                                      
                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Car Model</label>
                                          <asp:TextBox ID="carmodel" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Car Image</label>
                                          <asp:Label ID="carimage" runat="server" Text=""></asp:Label>
                                          <asp:FileUpload ID="fo" runat="server" class="form-control" />
                                      </div>


                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Car Number</label>
                                          <asp:TextBox ID="carnumber" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Available Date</label>
                                          <asp:TextBox ID="date" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Rent/day</label>
                                          <asp:TextBox ID="rent" runat="server" class="form-control"></asp:TextBox>
                                      </div>
                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Status</label>
                                          <asp:TextBox ID="status" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                          
                                                      

                                      <div>
                                       

                                          <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Update Car" OnClick="b1_Click"  />
                                          
                                      </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->
</asp:Content>