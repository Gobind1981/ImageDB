<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true"
    CodeFile="box_master.aspx.cs" Inherits="box_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <table width="100%">
            <tr>
                <td>
                    <h1>
                        Box Master</h1>
                </td>
                <td>
                    <p class="text-right">
                    </p>
                </td>
            </tr>
        </table>
        <div class="form-actions">
        </div>
        <div>
            <asp:DataGrid ID="Dgrid" runat="server" AutoGenerateColumns="False" OnItemCommand="Dgrid_ItemCommand"
                Width="100%" class="table table-striped">
                <Columns>
                    <asp:TemplateColumn HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lblIDE" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="BOX NUMBER">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_boxF" runat="server" BorderStyle="Groove" MaxLength="200" Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV" runat="server" ControlToValidate="txt_boxF"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_box" runat="server" Text='<%# Eval("Box_No") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_boxE" runat="server" Text='<%# Eval("Box_No") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Description">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_descF" runat="server" BorderStyle="Groove" MaxLength="200" Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV1" runat="server" ControlToValidate="txt_descF"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_desc" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_descE" runat="server" BorderStyle="Groove" MaxLength="200" Text='<%# Eval("Description") %>'
                                Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV2" runat="server" ControlToValidate="txt_descE"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Length">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_leng" runat="server" BorderStyle="Groove" MaxLength="200" Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV3" runat="server" ControlToValidate="txt_leng"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_len" runat="server" Text='<%# Eval("Length") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_lenE" runat="server" Text='<%# Eval("Length") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Breadth">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_Bre" runat="server" BorderStyle="Groove" MaxLength="200" Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV4" runat="server" ControlToValidate="txt_Bre"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_bre" runat="server" Text='<%# Eval("Breadth") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_breE" runat="server" Text='<%# Eval("Breadth") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Height">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_Hei" runat="server" BorderStyle="Groove" MaxLength="200" Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV5" runat="server" ControlToValidate="txt_Hei"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_hei" runat="server" Text='<%# Eval("Height") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_heiE" runat="server" Text='<%# Eval("Height") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Unit of Measure">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_unitMeasure" runat="server" BorderStyle="Groove" MaxLength="200"
                                Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV6" runat="server" ControlToValidate="txt_unitMeasure"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_unitMeasure" runat="server" Text='<%# Eval("UnitOfMeasure") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_unitMeasureE" runat="server" BorderStyle="Groove" MaxLength="200"
                                Text='<%# Eval("UnitOfMeasure") %>' Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV7" runat="server" ControlToValidate="txt_unitMeasureE"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Volu. Weight">
                        <FooterTemplate>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_volumeF" runat="server" Text='<%# Eval("Volumatric_Weight") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_volumeE" runat="server" Text='<%# Eval("Volumatric_Weight") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Devide_By">
                        <FooterTemplate>
                            <asp:TextBox ID="txt_devideF" runat="server" BorderStyle="Groove" MaxLength="200"
                                Width="80%"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV8" runat="server" ControlToValidate="txt_devideF"
                                Display="Dynamic" ErrorMessage="*" CssClass="required"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_devide" runat="server" Text='<%# Eval("Divided_By") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_devideE" runat="server" Text='<%# Eval("Divided_By") %>'></asp:Label>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Active">
                        <FooterTemplate>
                            <asp:CheckBox ID="chkIsActiveF" runat="server" />
                        </FooterTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkIsActive" runat="server" Enabled="False" Checked='<%#Convert.ToBoolean(Eval("ISACTIVE")) %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:CheckBox ID="chkIsActiveE" runat="server" Checked='<%#Convert.ToBoolean(Eval("ISACTIVE")) %>' />
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn>
                        <FooterTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="BtnSave" runat="server" CommandName="save" Text="Save" class="btn btn-success" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="cancel"
                                            Text="Cancel" class="btn btn-warning" />
                                    </td>
                                </tr>
                            </table>
                        </FooterTemplate>
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="BtnEdit" runat="server" CausesValidation="False" CommandName="edit"
                                            Text="Edit" class="btn btn-info" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <HeaderStyle Width="150px" />
                        <EditItemTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Button ID="BtnUpdate" runat="server" CommandName="update" Text="Update" class="btn btn-success" />
                                    </td>
                                    <td>
                                        <asp:Button ID="BtnCancel" runat="server" CausesValidation="False" CommandName="cancel"
                                            Text="Cancel" class="btn btn-warning" />
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
            <div class="altr" id="alert_hist" runat="server" visible="false">
                <h4>
                    Alert!</h4>
                No Items available!
            </div>
        </div>
    </div>
</asp:Content>
