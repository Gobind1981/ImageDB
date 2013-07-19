using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class box_master : System.Web.UI.Page
{
    BLogic BL = new BLogic();
    DataSet DsUser = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            Fill_Details();
        }
    }


    protected void Fill_Details()
    {
        try
        {
            DataSet oDS = new DataSet();
            oDS = BL.Fetch_Dataset_Query("CALL PROC_FETCH_BOX_MASTER()");
            ViewState["Records"] = oDS;
            Dgrid.DataSource = oDS;
            Dgrid.DataBind();
        }
        catch (Exception ex)
        {
            Alert.Show(ex.Message);
        }

    }
    protected void Dgrid_ItemCommand(object source, DataGridCommandEventArgs e)
    {

        string Query1 = "";
        switch (e.CommandName.ToString().ToLower())
        {

            case "save":
                try
                {
                    TextBox txt_box = (TextBox)e.Item.FindControl("txt_boxF");
                    TextBox txt_descrip = (TextBox)e.Item.FindControl("txt_descF");
                    TextBox txt_l = (TextBox)e.Item.FindControl("txt_leng");
                    TextBox txt_b = (TextBox)e.Item.FindControl("txt_Bre");
                    TextBox txt_h = (TextBox)e.Item.FindControl("txt_Hei");
                    TextBox txt_um = (TextBox)e.Item.FindControl("txt_unitMeasure");
                    TextBox txt_d = (TextBox)e.Item.FindControl("txt_devideF");
                    CheckBox chkActive = (CheckBox)e.Item.FindControl("chkIsActiveF");

                    int volume = ((Convert.ToInt32(txt_l.Text) * Convert.ToInt32(txt_l.Text) * Convert.ToInt32(txt_l.Text)) / Convert.ToInt32(txt_d.Text));



                    String Query = "insert into tbl_Box_Master (`Box_No`,`Description`,`Length`,`Breadth`," +
                    "`Height`,`UnitOfMeasure`,`Undefined`,`Volumatric_Weight`,`ISACTIVE`,`Divided_By`,`Created_By`,`Created_Date`," +
                    "`Modified_By`,`Modified_Date`)" +
                    " VALUES ('" + txt_box.Text.ToString() + "','" + txt_descrip.Text.ToString() + "','" + txt_l.Text.ToString() + "'," +
                    "'" + txt_b.Text.ToString() + "','" + txt_h.Text.ToString() + "','" + txt_um.Text.ToString() + "',''," +
                    "" + volume + "," + chkActive.Checked + "," + txt_d.Text.ToString() + ",1,NOW(),1,NOW())";

                    string Check_sp_code = "";
                    Check_sp_code = Convert.ToString(BL.executeScalar("select UID from tbl_Box_Master where Box_No='" + txt_box.Text.Trim() + "'"));
                    if (Check_sp_code != "0")
                    {
                        Alert.Show("Record not saved, due to duplicate Box Number.");
                        Dgrid.EditItemIndex = -1;
                        DsUser = (DataSet)ViewState["Records"];
                        Dgrid.DataSource = DsUser;
                        Dgrid.DataBind();
                        return;
                    }

                    BL.executeScalar(Query);
                    Alert.Show("Box Details Added Successfully.");
                    Dgrid.EditItemIndex = -1;
                    Fill_Details();
                }
                catch (Exception ex)
                {
                    Alert.Show("OOPS some error found. Kindly try again later");

                }

                break;
            case "cancel":

                Dgrid.ShowFooter = false;
                Dgrid.EditItemIndex = -1;
                DsUser = (DataSet)ViewState["Records"];
                Dgrid.DataSource = DsUser;
                Dgrid.DataBind();
                break;
            case "edit":

                Dgrid.ShowFooter = false;
                Dgrid.EditItemIndex = e.Item.ItemIndex;
                DsUser = (DataSet)ViewState["Records"];
                Dgrid.DataSource = DsUser;
                Dgrid.DataBind();
                break;

            case "update":

                try
                {

                    Label ID = (Label)e.Item.FindControl("lblIDE");
                    TextBox txt_dsce = (TextBox)e.Item.FindControl("txt_descE");
                    TextBox txt_unine = (TextBox)e.Item.FindControl("txt_unitMeasureE");
                    CheckBox chkActiveE = (CheckBox)e.Item.FindControl("chkIsActiveE");


                    String QueryE = "UPDATE tbl_Box_Master SET " +
                       "Description='" + txt_dsce.Text.Trim().Replace("'", "''") + "'," +
                       "UnitOfMeasure='" + txt_unine.Text.Trim().Replace("'", "''") + "'," +
                       "ISACTIVE=" + chkActiveE.Checked + " where ID='" + ID.Text + "'";


                    try
                    {
                        BL.executeScalar(QueryE);
                        Alert.Show("Record Updated Successfully.");                        
                        Dgrid.EditItemIndex = -1;
                        Fill_Details();

                    }
                    catch (Exception ex)
                    {
                        Alert.Show("Unable to update user, Try Later.");

                    }


                }
                catch (Exception ex)
                {
                    Alert.Show("OOPS some error found. Kindly try again later");
                }

                break;
            default:
                break;
        }
    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        Dgrid.EditItemIndex = -1;
        Dgrid.ShowFooter = true;
        DsUser = (DataSet)ViewState["Records"];
        Dgrid.DataSource = DsUser;
        Dgrid.DataBind();
    }
  
}