namespace WindowsFormsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.Aggregate = new System.Windows.Forms.GroupBox();
            this.cbx_Count_Distinct = new System.Windows.Forms.ComboBox();
            this.cbx_Count = new System.Windows.Forms.ComboBox();
            this.txtbox_Top = new System.Windows.Forms.TextBox();
            this.chkbx_Count_Distinct = new System.Windows.Forms.CheckBox();
            this.chkbx_Count = new System.Windows.Forms.CheckBox();
            this.chkbx_Top = new System.Windows.Forms.CheckBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.chkbx_Coordinates = new System.Windows.Forms.CheckBox();
            this.chkbx_CrimeDetail = new System.Windows.Forms.CheckBox();
            this.chkbx_Minutes = new System.Windows.Forms.CheckBox();
            this.chkbx_DayOfWeek = new System.Windows.Forms.CheckBox();
            this.chkbx_CrimeType = new System.Windows.Forms.CheckBox();
            this.chkbx_Year = new System.Windows.Forms.CheckBox();
            this.chkbx_Hours = new System.Windows.Forms.CheckBox();
            this.chkbx_City = new System.Windows.Forms.CheckBox();
            this.chkbx_Day = new System.Windows.Forms.CheckBox();
            this.chkbx_Month = new System.Windows.Forms.CheckBox();
            this.chkbx_TimeOfDay = new System.Windows.Forms.CheckBox();
            this.chkbx_Region = new System.Windows.Forms.CheckBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.gridview_analysis = new System.Windows.Forms.DataGridView();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.tbxWhereValue = new System.Windows.Forms.TextBox();
            this.comboBoxCondition = new System.Windows.Forms.ComboBox();
            this.btnWhereRemove = new System.Windows.Forms.Button();
            this.btnWhereAdd = new System.Windows.Forms.Button();
            this.listBoxWhere = new System.Windows.Forms.ListBox();
            this.comboBoxWhere = new System.Windows.Forms.ComboBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.radioButtonDesc = new System.Windows.Forms.RadioButton();
            this.radioButtonAcs = new System.Windows.Forms.RadioButton();
            this.btnOrderByRemove = new System.Windows.Forms.Button();
            this.btnOrderByAdd = new System.Windows.Forms.Button();
            this.listBoxOrderBy = new System.Windows.Forms.ListBox();
            this.cbxc = new System.Windows.Forms.ComboBox();
            this.btnExecuteQuery = new System.Windows.Forms.Button();
            this.btnMakeQuery = new System.Windows.Forms.Button();
            this.Query = new System.Windows.Forms.Label();
            this.txtQuery_Analysis = new System.Windows.Forms.TextBox();
            this.btnClearForm = new System.Windows.Forms.Button();
            this.Aggregate.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridview_analysis)).BeginInit();
            this.groupBox5.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // Aggregate
            // 
            this.Aggregate.Controls.Add(this.cbx_Count_Distinct);
            this.Aggregate.Controls.Add(this.cbx_Count);
            this.Aggregate.Controls.Add(this.txtbox_Top);
            this.Aggregate.Controls.Add(this.chkbx_Count_Distinct);
            this.Aggregate.Controls.Add(this.chkbx_Count);
            this.Aggregate.Controls.Add(this.chkbx_Top);
            this.Aggregate.Location = new System.Drawing.Point(12, 56);
            this.Aggregate.Name = "Aggregate";
            this.Aggregate.Size = new System.Drawing.Size(348, 128);
            this.Aggregate.TabIndex = 5;
            this.Aggregate.TabStop = false;
            this.Aggregate.Text = "Aggregate Functions";
            // 
            // cbx_Count_Distinct
            // 
            this.cbx_Count_Distinct.FormattingEnabled = true;
            this.cbx_Count_Distinct.Location = new System.Drawing.Point(143, 89);
            this.cbx_Count_Distinct.Name = "cbx_Count_Distinct";
            this.cbx_Count_Distinct.Size = new System.Drawing.Size(117, 30);
            this.cbx_Count_Distinct.TabIndex = 9;
            // 
            // cbx_Count
            // 
            this.cbx_Count.FormattingEnabled = true;
            this.cbx_Count.Location = new System.Drawing.Point(143, 56);
            this.cbx_Count.Name = "cbx_Count";
            this.cbx_Count.Size = new System.Drawing.Size(117, 30);
            this.cbx_Count.TabIndex = 5;
            // 
            // txtbox_Top
            // 
            this.txtbox_Top.Location = new System.Drawing.Point(143, 28);
            this.txtbox_Top.Name = "txtbox_Top";
            this.txtbox_Top.Size = new System.Drawing.Size(117, 29);
            this.txtbox_Top.TabIndex = 5;
            // 
            // chkbx_Count_Distinct
            // 
            this.chkbx_Count_Distinct.AutoSize = true;
            this.chkbx_Count_Distinct.Location = new System.Drawing.Point(6, 94);
            this.chkbx_Count_Distinct.Name = "chkbx_Count_Distinct";
            this.chkbx_Count_Distinct.Size = new System.Drawing.Size(143, 26);
            this.chkbx_Count_Distinct.TabIndex = 8;
            this.chkbx_Count_Distinct.Text = "Count Distinct ";
            this.chkbx_Count_Distinct.UseVisualStyleBackColor = true;
            this.chkbx_Count_Distinct.CheckedChanged += new System.EventHandler(this.chkbx_Count_Distinct_CheckedChanged);
            // 
            // chkbx_Count
            // 
            this.chkbx_Count.AutoSize = true;
            this.chkbx_Count.Location = new System.Drawing.Point(6, 60);
            this.chkbx_Count.Name = "chkbx_Count";
            this.chkbx_Count.Size = new System.Drawing.Size(80, 26);
            this.chkbx_Count.TabIndex = 6;
            this.chkbx_Count.Text = "Count";
            this.chkbx_Count.UseVisualStyleBackColor = true;
            this.chkbx_Count.CheckedChanged += new System.EventHandler(this.chkbx_Count_CheckedChanged);
            // 
            // chkbx_Top
            // 
            this.chkbx_Top.AutoSize = true;
            this.chkbx_Top.Location = new System.Drawing.Point(6, 31);
            this.chkbx_Top.Name = "chkbx_Top";
            this.chkbx_Top.Size = new System.Drawing.Size(62, 26);
            this.chkbx_Top.TabIndex = 5;
            this.chkbx_Top.Text = "Top";
            this.chkbx_Top.UseVisualStyleBackColor = true;
            this.chkbx_Top.CheckedChanged += new System.EventHandler(this.chkbx_Top_CheckedChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.chkbx_Coordinates);
            this.groupBox2.Controls.Add(this.chkbx_CrimeDetail);
            this.groupBox2.Controls.Add(this.chkbx_Minutes);
            this.groupBox2.Controls.Add(this.chkbx_DayOfWeek);
            this.groupBox2.Controls.Add(this.chkbx_CrimeType);
            this.groupBox2.Controls.Add(this.chkbx_Year);
            this.groupBox2.Controls.Add(this.chkbx_Hours);
            this.groupBox2.Controls.Add(this.chkbx_City);
            this.groupBox2.Controls.Add(this.chkbx_Day);
            this.groupBox2.Controls.Add(this.chkbx_Month);
            this.groupBox2.Controls.Add(this.chkbx_TimeOfDay);
            this.groupBox2.Controls.Add(this.chkbx_Region);
            this.groupBox2.Location = new System.Drawing.Point(12, 190);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(348, 108);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Group By";
            // 
            // chkbx_Coordinates
            // 
            this.chkbx_Coordinates.AutoSize = true;
            this.chkbx_Coordinates.Location = new System.Drawing.Point(135, 30);
            this.chkbx_Coordinates.Name = "chkbx_Coordinates";
            this.chkbx_Coordinates.Size = new System.Drawing.Size(125, 26);
            this.chkbx_Coordinates.TabIndex = 58;
            this.chkbx_Coordinates.Text = "Coordinates";
            this.chkbx_Coordinates.UseVisualStyleBackColor = true;
            this.chkbx_Coordinates.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_CrimeDetail
            // 
            this.chkbx_CrimeDetail.AutoSize = true;
            this.chkbx_CrimeDetail.Location = new System.Drawing.Point(5, 54);
            this.chkbx_CrimeDetail.Name = "chkbx_CrimeDetail";
            this.chkbx_CrimeDetail.Size = new System.Drawing.Size(126, 26);
            this.chkbx_CrimeDetail.TabIndex = 57;
            this.chkbx_CrimeDetail.Text = "Crime Detail";
            this.chkbx_CrimeDetail.UseVisualStyleBackColor = true;
            this.chkbx_CrimeDetail.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_Minutes
            // 
            this.chkbx_Minutes.AutoSize = true;
            this.chkbx_Minutes.Location = new System.Drawing.Point(265, 78);
            this.chkbx_Minutes.Name = "chkbx_Minutes";
            this.chkbx_Minutes.Size = new System.Drawing.Size(95, 26);
            this.chkbx_Minutes.TabIndex = 56;
            this.chkbx_Minutes.Text = "Minutes";
            this.chkbx_Minutes.UseVisualStyleBackColor = true;
            this.chkbx_Minutes.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_DayOfWeek
            // 
            this.chkbx_DayOfWeek.AutoSize = true;
            this.chkbx_DayOfWeek.Location = new System.Drawing.Point(5, 78);
            this.chkbx_DayOfWeek.Name = "chkbx_DayOfWeek";
            this.chkbx_DayOfWeek.Size = new System.Drawing.Size(129, 26);
            this.chkbx_DayOfWeek.TabIndex = 55;
            this.chkbx_DayOfWeek.Text = "Day of Week";
            this.chkbx_DayOfWeek.UseVisualStyleBackColor = true;
            this.chkbx_DayOfWeek.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_CrimeType
            // 
            this.chkbx_CrimeType.AutoSize = true;
            this.chkbx_CrimeType.Location = new System.Drawing.Point(232, 30);
            this.chkbx_CrimeType.Name = "chkbx_CrimeType";
            this.chkbx_CrimeType.Size = new System.Drawing.Size(117, 26);
            this.chkbx_CrimeType.TabIndex = 53;
            this.chkbx_CrimeType.Text = "Crime Type";
            this.chkbx_CrimeType.UseVisualStyleBackColor = true;
            this.chkbx_CrimeType.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_Year
            // 
            this.chkbx_Year.AutoSize = true;
            this.chkbx_Year.Location = new System.Drawing.Point(105, 54);
            this.chkbx_Year.Name = "chkbx_Year";
            this.chkbx_Year.Size = new System.Drawing.Size(68, 26);
            this.chkbx_Year.TabIndex = 52;
            this.chkbx_Year.Text = "Year";
            this.chkbx_Year.UseVisualStyleBackColor = true;
            this.chkbx_Year.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_Hours
            // 
            this.chkbx_Hours.AutoSize = true;
            this.chkbx_Hours.Location = new System.Drawing.Point(201, 78);
            this.chkbx_Hours.Name = "chkbx_Hours";
            this.chkbx_Hours.Size = new System.Drawing.Size(79, 26);
            this.chkbx_Hours.TabIndex = 51;
            this.chkbx_Hours.Text = "Hours";
            this.chkbx_Hours.UseVisualStyleBackColor = true;
            this.chkbx_Hours.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_City
            // 
            this.chkbx_City.AutoSize = true;
            this.chkbx_City.Location = new System.Drawing.Point(5, 30);
            this.chkbx_City.Name = "chkbx_City";
            this.chkbx_City.Size = new System.Drawing.Size(64, 26);
            this.chkbx_City.TabIndex = 42;
            this.chkbx_City.Text = "City";
            this.chkbx_City.UseVisualStyleBackColor = true;
            this.chkbx_City.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_Day
            // 
            this.chkbx_Day.AutoSize = true;
            this.chkbx_Day.Location = new System.Drawing.Point(227, 54);
            this.chkbx_Day.Name = "chkbx_Day";
            this.chkbx_Day.Size = new System.Drawing.Size(64, 26);
            this.chkbx_Day.TabIndex = 10;
            this.chkbx_Day.Text = "Day";
            this.chkbx_Day.UseVisualStyleBackColor = true;
            this.chkbx_Day.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_Month
            // 
            this.chkbx_Month.AutoSize = true;
            this.chkbx_Month.Location = new System.Drawing.Point(160, 54);
            this.chkbx_Month.Name = "chkbx_Month";
            this.chkbx_Month.Size = new System.Drawing.Size(85, 26);
            this.chkbx_Month.TabIndex = 9;
            this.chkbx_Month.Text = "Month";
            this.chkbx_Month.UseVisualStyleBackColor = true;
            this.chkbx_Month.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_TimeOfDay
            // 
            this.chkbx_TimeOfDay.AutoSize = true;
            this.chkbx_TimeOfDay.Location = new System.Drawing.Point(105, 78);
            this.chkbx_TimeOfDay.Name = "chkbx_TimeOfDay";
            this.chkbx_TimeOfDay.Size = new System.Drawing.Size(124, 26);
            this.chkbx_TimeOfDay.TabIndex = 8;
            this.chkbx_TimeOfDay.Text = "Time of Day";
            this.chkbx_TimeOfDay.UseVisualStyleBackColor = true;
            this.chkbx_TimeOfDay.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // chkbx_Region
            // 
            this.chkbx_Region.AutoSize = true;
            this.chkbx_Region.Location = new System.Drawing.Point(58, 30);
            this.chkbx_Region.Name = "chkbx_Region";
            this.chkbx_Region.Size = new System.Drawing.Size(100, 26);
            this.chkbx_Region.TabIndex = 7;
            this.chkbx_Region.Text = "Location";
            this.chkbx_Region.UseVisualStyleBackColor = true;
            this.chkbx_Region.CheckedChanged += new System.EventHandler(this.CheckBoxChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.gridview_analysis);
            this.groupBox1.Location = new System.Drawing.Point(366, 56);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(626, 608);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Analysis Results";
            // 
            // gridview_analysis
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(192)))), ((int)(((byte)(255)))));
            this.gridview_analysis.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.gridview_analysis.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.gridview_analysis.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.gridview_analysis.BackgroundColor = System.Drawing.SystemColors.Control;
            this.gridview_analysis.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridview_analysis.Location = new System.Drawing.Point(6, 21);
            this.gridview_analysis.Name = "gridview_analysis";
            this.gridview_analysis.Size = new System.Drawing.Size(608, 575);
            this.gridview_analysis.TabIndex = 0;
            // 
            // groupBox5
            // 
            this.groupBox5.Controls.Add(this.tbxWhereValue);
            this.groupBox5.Controls.Add(this.comboBoxCondition);
            this.groupBox5.Controls.Add(this.btnWhereRemove);
            this.groupBox5.Controls.Add(this.btnWhereAdd);
            this.groupBox5.Controls.Add(this.listBoxWhere);
            this.groupBox5.Controls.Add(this.comboBoxWhere);
            this.groupBox5.Location = new System.Drawing.Point(12, 304);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(348, 189);
            this.groupBox5.TabIndex = 52;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Where";
            // 
            // tbxWhereValue
            // 
            this.tbxWhereValue.Location = new System.Drawing.Point(24, 58);
            this.tbxWhereValue.Name = "tbxWhereValue";
            this.tbxWhereValue.Size = new System.Drawing.Size(243, 29);
            this.tbxWhereValue.TabIndex = 8;
            // 
            // comboBoxCondition
            // 
            this.comboBoxCondition.FormattingEnabled = true;
            this.comboBoxCondition.Location = new System.Drawing.Point(273, 42);
            this.comboBoxCondition.Name = "comboBoxCondition";
            this.comboBoxCondition.Size = new System.Drawing.Size(52, 30);
            this.comboBoxCondition.TabIndex = 7;
            // 
            // btnWhereRemove
            // 
            this.btnWhereRemove.Location = new System.Drawing.Point(185, 87);
            this.btnWhereRemove.Name = "btnWhereRemove";
            this.btnWhereRemove.Size = new System.Drawing.Size(140, 25);
            this.btnWhereRemove.TabIndex = 6;
            this.btnWhereRemove.Text = "Remove";
            this.btnWhereRemove.UseVisualStyleBackColor = true;
            this.btnWhereRemove.Click += new System.EventHandler(this.btnWhereRemove_Click);
            // 
            // btnWhereAdd
            // 
            this.btnWhereAdd.Location = new System.Drawing.Point(25, 87);
            this.btnWhereAdd.Name = "btnWhereAdd";
            this.btnWhereAdd.Size = new System.Drawing.Size(154, 25);
            this.btnWhereAdd.TabIndex = 5;
            this.btnWhereAdd.Text = "Add";
            this.btnWhereAdd.UseVisualStyleBackColor = true;
            this.btnWhereAdd.Click += new System.EventHandler(this.btnWhereAdd_Click);
            // 
            // listBoxWhere
            // 
            this.listBoxWhere.FormattingEnabled = true;
            this.listBoxWhere.ItemHeight = 22;
            this.listBoxWhere.Location = new System.Drawing.Point(25, 114);
            this.listBoxWhere.Name = "listBoxWhere";
            this.listBoxWhere.Size = new System.Drawing.Size(300, 48);
            this.listBoxWhere.TabIndex = 4;
            // 
            // comboBoxWhere
            // 
            this.comboBoxWhere.FormattingEnabled = true;
            this.comboBoxWhere.Location = new System.Drawing.Point(25, 30);
            this.comboBoxWhere.Name = "comboBoxWhere";
            this.comboBoxWhere.Size = new System.Drawing.Size(242, 30);
            this.comboBoxWhere.TabIndex = 1;
            this.comboBoxWhere.SelectedIndexChanged += new System.EventHandler(this.comboBoxWhere_SelectedIndexChanged);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.radioButtonDesc);
            this.groupBox3.Controls.Add(this.radioButtonAcs);
            this.groupBox3.Controls.Add(this.btnOrderByRemove);
            this.groupBox3.Controls.Add(this.btnOrderByAdd);
            this.groupBox3.Controls.Add(this.listBoxOrderBy);
            this.groupBox3.Controls.Add(this.cbxc);
            this.groupBox3.Location = new System.Drawing.Point(12, 500);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(348, 164);
            this.groupBox3.TabIndex = 9;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Order By";
            // 
            // radioButtonDesc
            // 
            this.radioButtonDesc.AutoSize = true;
            this.radioButtonDesc.Checked = true;
            this.radioButtonDesc.Location = new System.Drawing.Point(122, 49);
            this.radioButtonDesc.Name = "radioButtonDesc";
            this.radioButtonDesc.Size = new System.Drawing.Size(73, 26);
            this.radioButtonDesc.TabIndex = 49;
            this.radioButtonDesc.TabStop = true;
            this.radioButtonDesc.Text = "DESC";
            this.radioButtonDesc.UseVisualStyleBackColor = true;
            // 
            // radioButtonAcs
            // 
            this.radioButtonAcs.AutoSize = true;
            this.radioButtonAcs.Location = new System.Drawing.Point(179, 49);
            this.radioButtonAcs.Name = "radioButtonAcs";
            this.radioButtonAcs.Size = new System.Drawing.Size(63, 26);
            this.radioButtonAcs.TabIndex = 50;
            this.radioButtonAcs.Text = "ASC";
            this.radioButtonAcs.UseVisualStyleBackColor = true;
            // 
            // btnOrderByRemove
            // 
            this.btnOrderByRemove.Location = new System.Drawing.Point(179, 73);
            this.btnOrderByRemove.Name = "btnOrderByRemove";
            this.btnOrderByRemove.Size = new System.Drawing.Size(137, 25);
            this.btnOrderByRemove.TabIndex = 6;
            this.btnOrderByRemove.Text = "Remove";
            this.btnOrderByRemove.UseVisualStyleBackColor = true;
            this.btnOrderByRemove.Click += new System.EventHandler(this.btnOrderByRemove_Click);
            // 
            // btnOrderByAdd
            // 
            this.btnOrderByAdd.Location = new System.Drawing.Point(18, 73);
            this.btnOrderByAdd.Name = "btnOrderByAdd";
            this.btnOrderByAdd.Size = new System.Drawing.Size(155, 25);
            this.btnOrderByAdd.TabIndex = 5;
            this.btnOrderByAdd.Text = "Add";
            this.btnOrderByAdd.UseVisualStyleBackColor = true;
            this.btnOrderByAdd.Click += new System.EventHandler(this.btnOrderByAdd_Click);
            // 
            // listBoxOrderBy
            // 
            this.listBoxOrderBy.FormattingEnabled = true;
            this.listBoxOrderBy.ItemHeight = 22;
            this.listBoxOrderBy.Location = new System.Drawing.Point(18, 104);
            this.listBoxOrderBy.Name = "listBoxOrderBy";
            this.listBoxOrderBy.Size = new System.Drawing.Size(298, 48);
            this.listBoxOrderBy.TabIndex = 4;
            // 
            // cbxc
            // 
            this.cbxc.FormattingEnabled = true;
            this.cbxc.Location = new System.Drawing.Point(22, 21);
            this.cbxc.Name = "cbxc";
            this.cbxc.Size = new System.Drawing.Size(298, 30);
            this.cbxc.TabIndex = 1;
            // 
            // btnExecuteQuery
            // 
            this.btnExecuteQuery.Location = new System.Drawing.Point(633, 12);
            this.btnExecuteQuery.Name = "btnExecuteQuery";
            this.btnExecuteQuery.Size = new System.Drawing.Size(105, 25);
            this.btnExecuteQuery.TabIndex = 56;
            this.btnExecuteQuery.Text = "Execute Query";
            this.btnExecuteQuery.UseVisualStyleBackColor = true;
            this.btnExecuteQuery.Click += new System.EventHandler(this.btnExecuteQuery_Click);
            // 
            // btnMakeQuery
            // 
            this.btnMakeQuery.Location = new System.Drawing.Point(516, 12);
            this.btnMakeQuery.Name = "btnMakeQuery";
            this.btnMakeQuery.Size = new System.Drawing.Size(105, 25);
            this.btnMakeQuery.TabIndex = 55;
            this.btnMakeQuery.Text = "Make Query";
            this.btnMakeQuery.UseVisualStyleBackColor = true;
            this.btnMakeQuery.Click += new System.EventHandler(this.btnMakeQuery_Click);
            // 
            // Query
            // 
            this.Query.AutoSize = true;
            this.Query.Location = new System.Drawing.Point(20, 17);
            this.Query.Name = "Query";
            this.Query.Size = new System.Drawing.Size(63, 22);
            this.Query.TabIndex = 54;
            this.Query.Text = "Query :";
            // 
            // txtQuery_Analysis
            // 
            this.txtQuery_Analysis.Location = new System.Drawing.Point(70, 14);
            this.txtQuery_Analysis.Name = "txtQuery_Analysis";
            this.txtQuery_Analysis.Size = new System.Drawing.Size(428, 29);
            this.txtQuery_Analysis.TabIndex = 53;
            // 
            // btnClearForm
            // 
            this.btnClearForm.Location = new System.Drawing.Point(747, 14);
            this.btnClearForm.Name = "btnClearForm";
            this.btnClearForm.Size = new System.Drawing.Size(105, 23);
            this.btnClearForm.TabIndex = 57;
            this.btnClearForm.Text = "Clear Form";
            this.btnClearForm.UseVisualStyleBackColor = true;
            this.btnClearForm.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Info;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(1002, 663);
            this.Controls.Add(this.btnClearForm);
            this.Controls.Add(this.btnExecuteQuery);
            this.Controls.Add(this.btnMakeQuery);
            this.Controls.Add(this.Query);
            this.Controls.Add(this.txtQuery_Analysis);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox5);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.Aggregate);
            this.DoubleBuffered = true;
            this.Font = new System.Drawing.Font("Calibri", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Criminology - Ad Hoc Querying";
            this.Load += new System.EventHandler(this.Form1_Load_1);
            this.Aggregate.ResumeLayout(false);
            this.Aggregate.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridview_analysis)).EndInit();
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox Aggregate;
        private System.Windows.Forms.ComboBox cbx_Count_Distinct;
        private System.Windows.Forms.ComboBox cbx_Count;
        private System.Windows.Forms.TextBox txtbox_Top;
        private System.Windows.Forms.CheckBox chkbx_Count_Distinct;
        private System.Windows.Forms.CheckBox chkbx_Count;
        private System.Windows.Forms.CheckBox chkbx_Top;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.CheckBox chkbx_CrimeType;
        private System.Windows.Forms.CheckBox chkbx_Year;
        private System.Windows.Forms.CheckBox chkbx_Hours;
        private System.Windows.Forms.CheckBox chkbx_City;
        private System.Windows.Forms.CheckBox chkbx_Day;
        private System.Windows.Forms.CheckBox chkbx_Month;
        private System.Windows.Forms.CheckBox chkbx_TimeOfDay;
        private System.Windows.Forms.CheckBox chkbx_Region;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView gridview_analysis;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.TextBox tbxWhereValue;
        private System.Windows.Forms.ComboBox comboBoxCondition;
        private System.Windows.Forms.Button btnWhereRemove;
        private System.Windows.Forms.Button btnWhereAdd;
        private System.Windows.Forms.ListBox listBoxWhere;
        private System.Windows.Forms.ComboBox comboBoxWhere;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton radioButtonDesc;
        private System.Windows.Forms.RadioButton radioButtonAcs;
        private System.Windows.Forms.Button btnOrderByRemove;
        private System.Windows.Forms.Button btnOrderByAdd;
        private System.Windows.Forms.ListBox listBoxOrderBy;
        private System.Windows.Forms.ComboBox cbxc;
        private System.Windows.Forms.Button btnExecuteQuery;
        private System.Windows.Forms.Button btnMakeQuery;
        private System.Windows.Forms.Label Query;
        private System.Windows.Forms.TextBox txtQuery_Analysis;
        private System.Windows.Forms.CheckBox chkbx_DayOfWeek;
        private System.Windows.Forms.CheckBox chkbx_Minutes;
        private System.Windows.Forms.CheckBox chkbx_CrimeDetail;
        private System.Windows.Forms.CheckBox chkbx_Coordinates;
        private System.Windows.Forms.Button btnClearForm;
        //   private System.Windows.Forms.DataVisualization.Charting.Chart chart1;
        //   private System.Windows.Forms.Button btnMakeChart;
        //   private System.Windows.Forms.ComboBox comboBoxXAxis;
        //   private System.Windows.Forms.ComboBox comboBoxYAxis;
    }
}

