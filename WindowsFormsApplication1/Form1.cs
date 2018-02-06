using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Configuration;
using System.Threading;
using System.Windows.Forms.DataVisualization.Charting;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            //InitializeComponent();
            Thread t = new Thread(new ThreadStart(SplashStart));
            t.Start();
            Thread.Sleep(6000);

            InitializeComponent();
            t.Abort();
        }

        public void SplashStart()
        {
            Application.Run(new SplashScreen());
        }


        string alias = "";
        DataSet ds = null;
        List<string> GroupBy = new List<string>();
        List<string> Table = new List<string>();
        private void Form1_Load_1(object sender, EventArgs e)
        {
            // toolStripProgressBar1.Value = 50;
            // toolStripProgressBar1.Visible = false;
            cbx_Count.Items.Add("City");
            cbx_Count.Items.Add("Location");
            cbx_Count.Items.Add("Coordinates");
            cbx_Count.Items.Add("Crime Type");
            cbx_Count.Items.Add("Crime Detail");
            cbx_Count.Items.Add("Year");
            cbx_Count.Items.Add("Month");
            cbx_Count.Items.Add("Day");
            cbx_Count.Items.Add("Day of Week");
            cbx_Count.Items.Add("Time of Day");
            cbx_Count.Items.Add("Hours");
            cbx_Count.Items.Add("Minutes");


            cbx_Count_Distinct.Items.Add("City");
            cbx_Count_Distinct.Items.Add("Location");
            cbx_Count_Distinct.Items.Add("Coordinates");
            cbx_Count_Distinct.Items.Add("Crime Type");
            cbx_Count_Distinct.Items.Add("Crime Detail");
            cbx_Count_Distinct.Items.Add("Year");
            cbx_Count_Distinct.Items.Add("Month");
            cbx_Count_Distinct.Items.Add("Day");
            cbx_Count_Distinct.Items.Add("Day of Week");
            cbx_Count_Distinct.Items.Add("Time of Day");
            cbx_Count_Distinct.Items.Add("Hours");
            cbx_Count_Distinct.Items.Add("Minutes");

            txtbox_Top.Enabled = false;
            cbx_Count.Enabled = false;
            cbx_Count_Distinct.Enabled = false;


        }
        public string GroupListItems()
        {
            List<string> grouplist = new List<string>();

            if (chkbx_City.Checked == true)
            {
                alias = "CrimeCity";
                grouplist.Add(alias + "." + "City_Name");
            }
            if (chkbx_Region.Checked == true)
            {
                alias = "CrimeLocation";
                grouplist.Add(alias + "." + "CrimeLocation");
            }

            if (chkbx_Coordinates.Checked == true)
            {
                alias = "CrimeCoordinates";
                grouplist.Add(alias + "." + "CrimeLocCoordinates_Original");
            }

            if (chkbx_CrimeType.Checked == true)
            {
                alias = "CrimeType";
                grouplist.Add(alias + "." + "Crime_Type");
            }

            if (chkbx_CrimeDetail.Checked == true)
            {
                alias = "CrimeType";
                grouplist.Add(alias + "." + "Crime_Detail");
            }

            if (chkbx_Day.Checked == true)
            {
                alias = "Dim_CrimeDate";
                grouplist.Add(alias + "." + "CrimeDate_WeekDay");
            }
            if (chkbx_Month.Checked == true)
            {
                alias = "Dim_CrimeDate";
                grouplist.Add(alias + "." + "CrimeDate_MonthName");
            }
            if (chkbx_Year.Checked == true)
            {
                alias = "Dim_CrimeDate";
                grouplist.Add(alias + "." + "CrimeDate_Year");
            }
            if (chkbx_Day.Checked == true)
            {
                alias = "Dim_CrimeDate";
                grouplist.Add(alias + "." + "CrimeDate_Day");
            }

            if (chkbx_TimeOfDay.Checked == true)
            {
                alias = "Dim_CrimeTime";
                grouplist.Add(alias + "." + "CrimeTime_TimeOfDay");
            }

            if (chkbx_Hours.Checked == true)
            {
                alias = "Dim_CrimeTime";
                grouplist.Add(alias + "." + "CrimeTime_Hours");
            }


            if (chkbx_Minutes.Checked == true)
            {
                alias = "Dim_CrimeTime";
                grouplist.Add(alias + "." + "CrimeTime_Minutes");
            }


            string items_list = string.Join(",", grouplist.ToArray());
            return items_list;
        }

        public string CorrectAggregateValue()
        {

            string correct = "";
            if (cbx_Count.SelectedItem == "City" || cbx_Count_Distinct.SelectedItem == "City")
            {
                correct = "City_Name";
            }
            if (cbx_Count.SelectedItem == "Location" || cbx_Count_Distinct.SelectedItem == "Location")
            {
                correct = "CrimeLocation";
            }
            if (cbx_Count.SelectedItem == "Coordinates" || cbx_Count_Distinct.SelectedItem == "Coordinates")
            {
                correct = "CrimeLocCoordinates_Original";
            }
            if (cbx_Count.SelectedItem == "Crime Type" || cbx_Count_Distinct.SelectedItem == "Crime Type")
            {
                correct = "Crime_Type";
            }
            if (cbx_Count.SelectedItem == "Crime Detail" || cbx_Count_Distinct.SelectedItem == "Crime Detail")
            {
                correct = "Crime_Detail";
            }

            if (cbx_Count.SelectedItem == "Year" || cbx_Count_Distinct.SelectedItem == "Year")
            {
                correct = "CrimeDate_Year";
            }
            if (cbx_Count.SelectedItem == "Month" || cbx_Count_Distinct.SelectedItem == "Month")
            {
                correct = "CrimeDate_MonthName";
            }
            if (cbx_Count.SelectedItem == "Day" || cbx_Count_Distinct.SelectedItem == "Day")
            {
                correct = "CrimeDate_Day";
            }
            if (cbx_Count.SelectedItem == "Day of Week" || cbx_Count_Distinct.SelectedItem == "Day of Week")
            {
                correct = "CrimeDate_WeekDay";
            }
            if (cbx_Count.SelectedItem == "Time of Day" || cbx_Count_Distinct.SelectedItem == "Time of Day")
            {
                correct = "CrimeTime_TimeofDay";
            }
            if (cbx_Count.SelectedItem == "Hours" || cbx_Count_Distinct.SelectedItem == "Hours")
            {
                correct = "CrimeTime_Hours";
            }
            if (cbx_Count.SelectedItem == "Minutes" || cbx_Count_Distinct.SelectedItem == "Minutes")
            {
                correct = "CrimeTime_Minutes";
            }

            return correct;
        }

        public string GetAlias(string selecteditem)
        {

            try
            {
                switch (selecteditem)
                {
                    case "City_Name":
                        alias = "CrimeCity";
                        break;
                    case "CrimeLocation":
                        alias = "CrimeLocation";
                        break;
                    case "CrimeLocCoordinates_Original":
                        alias = "CrimeCoordinates";
                        break;
                    case "Crime_Type":
                        alias = "CrimeType";
                        break;
                    case "Crime_Detail":
                        alias = "CrimeType";
                        break;
                    case "CrimeDate_WeekDay":
                        alias = "Dim_CrimeDate";
                        break;
                    case "CrimeDate_MonthName":
                        alias = "Dim_CrimeDate";
                        break;
                    case "CrimeDate_Year":
                        alias = "Dim_CrimeDate";
                        break;
                    case "CrimeDate_Day":
                        alias = "Dim_CrimeDate";
                        break;
                    case "CrimeTime_TimeOfDay":
                        alias = "Dim_CrimeTime";
                        break;
                    case "CrimeTime_Hours":
                        alias = "Dim_CrimeTime";
                        break;
                    case "CrimeTime_Minutes":
                        alias = "Dim_CrimeTime";
                        break;

                    default:
                        break;
                }


                return alias;
            }
            catch (Exception)
            {

                throw;
            }


        }

        public string LookUpSelect(string selecteditem)
        {
            string value = "";
            try
            {
                switch (selecteditem)
                {

                    case "City":
                        value = "CrimeCity.City_Name";
                        break;
                    case "Location":
                        value = "CrimeLocation.CrimeLocation";
                        break;
                    case "Coordinates":
                        value = "CrimeCoordinates.CrimeLocCoordinates_Original";
                        break;
                    case "Crime Type":
                        value = "CrimeType.Crime_Type";
                        break;
                    case "Crime Detail":
                        value = "CrimeType.Crime_Detail";
                        break;
                    case "Day of Week":
                        value = "Dim_CrimeDate.CrimeDate_WeekDay";
                        break;

                    case "Day":
                        value = "Dim_CrimeDate.CrimeDate_Day";
                        break;

                    case "Month":
                        value = "Dim_CrimeDate.CrimeDate_MonthName";
                        break;
                    case "Year":
                        value = "Dim_CrimeDate.CrimeDate_Year";
                        break;

                    case "Time of Day":
                        value = "Dim_CrimeTime.CrimeTime_TimeOfDay";
                        break;

                    case "Hours":
                        value = "Dim_CrimeTime.CrimeTime_Hours";
                        break;
                    case "Minutes":
                        value = "Dim_CrimeTime.CrimeTime_Minutes";
                        break;


                    default:
                        break;
                }


                return value;
            }
            catch (Exception)
            {

                throw;
            }


        }

        public string LookUpTable(string selecteditem)
        {
            string value = "";
            try
            {
                switch (selecteditem)
                {
                    // Student
                    case "City":
                        value = "AIT581.dbo.Dim_CrimeCity CrimeCity";
                        break;
                    case "Location":
                        value = "AIT581.dbo.Dim_CrimeLocation CrimeLocation";
                        break;
                    case "Coordinates":
                        value = "AIT581.dbo.Dim_CrimeLocCoordinates CrimeCoordinates";
                        break;
                    case "Crime Type":
                        value = "AIT581.dbo.Dim_CrimeType CrimeType";
                        break;
                    case "Crime Detail":
                        value = "AIT581.dbo.Dim_CrimeType CrimeType";
                        break;
                    case "Day of Week":
                        value = "AIT581.dbo.Dim_CrimeDate Dim_CrimeDate";
                        break;
                    case "Day":
                        value = "AIT581.dbo.Dim_CrimeDate Dim_CrimeDate";
                        break;
                    case "Month":
                        value = "AIT581.dbo.Dim_CrimeDate Dim_CrimeDate";
                        break;
                    case "Year":
                        value = "AIT581.dbo.Dim_CrimeDate Dim_CrimeDate";
                        break;

                    case "Hours":
                        value = "AIT581.dbo.Dim_CrimeTime Dim_CrimeTime";
                        break;
                    case "Minutes":
                        value = "AIT581.dbo.Dim_CrimeTime Dim_CrimeTime";
                        break;
                    case "Time of Day":
                        value = "AIT581.dbo.Dim_CrimeTime Dim_CrimeTime";
                        break;


                    default:
                        break;
                }


                return value;
            }
            catch (Exception)
            {

                throw;
            }


        }

        public void CheckBoxChanged(object sender, EventArgs e)
        {
            CheckBox chkbox = (sender as CheckBox);

            string name = chkbox.Text;
            string value = LookUpSelect(name);
            string table = LookUpTable(name);
            if (chkbox.Checked == true)
            {

                if (!GroupBy.Contains(value))   // If Not In List
                {
                    GroupBy.Add(value);
                }
                // if (!Table.Contains(table))   // If Not In List
                //  {
                Table.Add(table);
                //  }
                if (!cbxc.Items.Contains(value))   // If Not In List
                {
                    cbxc.Items.Add(value);
                }
                if (!comboBoxWhere.Items.Contains(value))   // If Not In List
                {
                    comboBoxWhere.Items.Add(value);
                }

            }
            else
            {
                if (GroupBy.Contains(value))    // If In List
                {
                    GroupBy.Remove(value);
                }
                if (Table.Contains(table))    // If In List
                {
                    Table.Remove(table);
                }
                if (cbxc.Items.Contains(value))   // If Not In List
                {
                    cbxc.Items.Remove(value);
                }
                if (listBoxOrderBy.Items.Contains(value + " DESC"))   // If Not In List
                {
                    listBoxOrderBy.Items.Remove(value + " DESC");
                }
                if (listBoxOrderBy.Items.Contains(value + " ASC"))   // If Not In List
                {
                    listBoxOrderBy.Items.Remove(value + " ASC");
                }

                if (comboBoxWhere.Items.Contains(value))   // If Not In List
                {
                    int i = comboBoxWhere.Items.IndexOf(value);
                    comboBoxWhere.Items.RemoveAt(i);
                }
            }
        }
        private void chkbx_Count_CheckedChanged(object sender, EventArgs e)
        {
            if (chkbx_Count.Checked == true)
            {

                chkbx_Count_Distinct.Enabled = false;
                cbx_Count.Enabled = true;

                cbx_Count.SelectedItem = cbx_Count.Items[0];
            }


            if (chkbx_Count.Checked == false)
            {

                chkbx_Count_Distinct.Enabled = true;
                cbx_Count.Enabled = false;
                cbx_Count.SelectedItem = null;
            }



        }

        private void chkbx_Count_Distinct_CheckedChanged(object sender, EventArgs e)
        {
            if (chkbx_Count_Distinct.Checked == true)
            {

                chkbx_Count.Enabled = false;
                cbx_Count_Distinct.Enabled = true;

                cbx_Count_Distinct.SelectedItem = cbx_Count_Distinct.Items[0];
            }
            if (chkbx_Count_Distinct.Checked == false)
            {
                chkbx_Count.Enabled = true;
                cbx_Count_Distinct.Enabled = false;
                cbx_Count_Distinct.SelectedItem = null;
            }
        }
        private void btnMakeQuery_Click(object sender, EventArgs e)
        {

            MakeQuery();
        }

        private void btnExecuteQuery_Click(object sender, EventArgs e)
        {

            string query = txtQuery_Analysis.Text;

            DatabaseHelper db = new DatabaseHelper();

            ds = new DataSet();

            ds = db.ExecuteDataSet(query, CommandType.Text);




            gridview_analysis.DataSource = ds.Tables[0];

            if (null != gridview_analysis)
            {
                foreach (DataGridViewRow r in gridview_analysis.Rows)
                {
                    gridview_analysis.Rows[r.Index].HeaderCell.Value = (r.Index + 1).ToString();
                }
            }


        }

        public void MakeQuery()
        {
            string select = "";
            string top = "";
            string aggregate = "";
            string tables = "";
            string where = "";
            string groupby = "";
            string orderby = "";
            if (listBoxOrderBy.Items.Count > 0)
            {
                orderby = " ORDER BY " + string.Join(",", listBoxOrderBy.Items.Cast<String>().ToArray());
            }



            // TOP
            if (chkbx_Top.Checked == true)
            {
                top = "TOP " + txtbox_Top.Text + " ";
            }
            // Aggregates
            string correct = CorrectAggregateValue();
            if (chkbx_Count.Checked == true)
            {
                alias = GetAlias(correct);
                string col = correct;

                aggregate = "Count(" + alias + "." + col + ")";

            }
            if (chkbx_Count_Distinct.Checked == true)
            {

                alias = GetAlias(correct);
                string col = correct;


                aggregate = "Count (distinct " + alias + "." + col + ")";

            }

            bool isMultipleTable = false;

            if (Table.Distinct().ToList().Count == 1 && aggregate == "")
            {
                tables = string.Join(",", Table.Distinct().ToArray());
            }
            else
            {

                tables = "  AIT581.dbo.Dim_CrimeCity CrimeCity, AIT581.dbo.Dim_CrimeLocation CrimeLocation, AIT581.dbo.Dim_CrimeDate Dim_CrimeDate," +
                         "AIT581.dbo.Dim_CrimeLocCoordinates CrimeCoordinates, AIT581.dbo.Dim_CrimeTime Dim_CrimeTime , AIT581.dbo.Dim_CrimeType CrimeType, " +
                         "AIT581.dbo.Crime_FactTable CrimeFactTable ";

                where = "WHERE    CrimeFactTable.Dim_CrimeCity_ID			 = CrimeCity.Dim_City_ID        " +
                        "   and CrimeFactTable.Dim_CrimeLocation_ID  = CrimeLocation.Dim_CrimeLocation_ID	" +
                        "	and CrimeFactTable.Dim_CrimeDate_ID  = Dim_CrimeDate.Dim_CrimeDate_ID	" +
                        "	and CrimeFactTable.Dim_CrimeTime_ID  = Dim_CrimeTime.Dim_CrimeTime_ID	" +
                        "	and CrimeFactTable.Dim_CrimeLocCoordinates_ID = CrimeCoordinates.Dim_CrimeLocCoordinates_ID	" +
                        "	and CrimeFactTable.Dim_CrimeType_ID	 = CrimeType.Dim_CrimeType_ID	";
                isMultipleTable = true;

            }

            if (listBoxWhere.Items.Count > 0)
            {
                if (isMultipleTable)
                {
                    where += " and " + string.Join(" and ", listBoxWhere.Items.Cast<string>().ToArray());
                }
                else
                {
                    where += "WHERE " + string.Join(" and ", listBoxWhere.Items.Cast<string>().ToArray());
                }
            }

            if (GroupBy.Count > 1)
            {
                groupby = string.Join(",", GroupBy.ToArray());
            }
            else if (GroupBy.Count == 1)
            {
                groupby = GroupBy.First();
            }
            // SELECT

            select += groupby;
            if (aggregate != "" && select != "")
            {
                select = " ," + select;
            }
            // Group By
            if (groupby != "")
            {
                groupby = " Group BY " + groupby;
            }

            string query = "SELECT " + top + " " + aggregate + " " + select + "  FROM  " + tables + " " + where + " " + groupby + " " + orderby + " ;";
            txtQuery_Analysis.Text = query;
        }

        private void chkbx_Top_CheckedChanged(object sender, EventArgs e)
        {
            if (chkbx_Top.Checked == true)
            {
                txtbox_Top.Enabled = true;
            }
            else
            {
                txtbox_Top.Enabled = false;
                txtbox_Top.Text = "";
            }
        }

        private void btnOrderByAdd_Click(object sender, EventArgs e)
        {
            if (cbxc.SelectedItem != null)
            {
                string type = "";
                if (radioButtonDesc.Checked == true)
                {
                    type = " DESC";
                }
                if (radioButtonAcs.Checked == true)
                {
                    type = " ASC";
                }
                listBoxOrderBy.Items.Add(cbxc.SelectedItem.ToString() + type);
                cbxc.Items.Remove(cbxc.SelectedItem);
                cbxc.Text = "";
            }
        }

        private void btnOrderByRemove_Click(object sender, EventArgs e)
        {
            if (listBoxOrderBy.SelectedItem != null)
            {
                cbxc.Items.Add(listBoxOrderBy.SelectedItem.ToString().Split(' ').First());
                listBoxOrderBy.Items.Remove(listBoxOrderBy.SelectedItem);

            }
        }

        private void btnWhereAdd_Click(object sender, EventArgs e)
        {
            if (comboBoxWhere.SelectedItem != null && comboBoxCondition.SelectedItem != null && tbxWhereValue.Text != "")
            {
                string attribute = comboBoxWhere.SelectedItem.ToString();
                string condition = comboBoxCondition.SelectedItem.ToString();
                string value = tbxWhereValue.Text;

                bool isString = isTypeString(attribute);
                if (isString)
                {
                    value = " '" + value + "' ";
                }

                listBoxWhere.Items.Add(attribute + condition + value);
                comboBoxWhere.Text = "";
                comboBoxCondition.Text = "";
                tbxWhereValue.Text = "";
            }
        }
        private bool isTypeString(string value)
        {
            bool isString = true;

            switch (value)
            {
                case "Dim_CrimeDate.CrimeDate_Year":
                    isString = false;
                    break;
                case "Dim_CrimeDate.CrimeDate_Day":
                    isString = false;
                    break;
                case "Dim_CrimeTime.CrimeTime_Hours":
                    isString = false;
                    break;
                case "Dim_CrimeTime.CrimeTime_Minutes":
                    isString = false;
                    break;


                default:
                    break;
            }

            return isString;
        }
        private void comboBoxWhere_SelectedIndexChanged(object sender, EventArgs e)
        {
            string value = comboBoxWhere.SelectedItem.ToString();
            bool isString = isTypeString(value);
            if (isString)
            {
                comboBoxCondition.Items.Clear();
                comboBoxCondition.Items.Add(" like ");
                comboBoxCondition.Items.Add(" = ");
            }
            else
            {

                comboBoxCondition.Items.Clear();
                comboBoxCondition.Items.Add(" = ");
                comboBoxCondition.Items.Add(" <> ");
                comboBoxCondition.Items.Add(" <= ");
                comboBoxCondition.Items.Add(" < ");
                comboBoxCondition.Items.Add(" => ");
                comboBoxCondition.Items.Add(" > ");
            }
        }

        private void btnWhereRemove_Click(object sender, EventArgs e)
        {
            if (listBoxWhere.SelectedItem != null)
            {
                listBoxWhere.Items.Remove(listBoxWhere.SelectedItem);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            txtbox_Top.Text = string.Empty;
            txtQuery_Analysis.Text = string.Empty;

            chkbx_City.Checked = false;
            chkbx_Coordinates.Checked = false;
            chkbx_Count.Checked = false;
            chkbx_Count_Distinct.Checked = false;
            chkbx_CrimeDetail.Checked = false;
            chkbx_CrimeType.Checked = false;
            chkbx_Day.Checked = false;
            chkbx_DayOfWeek.Checked = false;
            chkbx_Hours.Checked = false;
            chkbx_Minutes.Checked = false;
            chkbx_Month.Checked = false;
            chkbx_Region.Checked = false;
            chkbx_TimeOfDay.Checked = false;
            chkbx_Top.Checked = false;
            chkbx_Year.Checked = false;

            listBoxOrderBy.Items.Clear();
            listBoxWhere.Items.Clear();

            gridview_analysis.DataSource = null;
            gridview_analysis.Rows.Clear();
            gridview_analysis.Refresh();

        }


    }
}
