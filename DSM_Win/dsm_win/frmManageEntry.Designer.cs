namespace dsm_win
{
    partial class frmManageEntry
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
            this.btnBack = new System.Windows.Forms.Button();
            this.dgvDogClasses = new System.Windows.Forms.DataGridView();
            this.selectEntrant = new dsm_win.SelectPerson();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDogClasses)).BeginInit();
            this.SuspendLayout();
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(717, 487);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(75, 23);
            this.btnBack.TabIndex = 0;
            this.btnBack.Text = "Back";
            this.btnBack.UseVisualStyleBackColor = true;
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // dgvDogClasses
            // 
            this.dgvDogClasses.AllowUserToAddRows = false;
            this.dgvDogClasses.AllowUserToDeleteRows = false;
            this.dgvDogClasses.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDogClasses.Location = new System.Drawing.Point(8, 63);
            this.dgvDogClasses.Name = "dgvDogClasses";
            this.dgvDogClasses.ReadOnly = true;
            this.dgvDogClasses.Size = new System.Drawing.Size(784, 364);
            this.dgvDogClasses.TabIndex = 13;
            this.dgvDogClasses.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDogClasses_CellDoubleClick);
            // 
            // selectEntrant
            // 
            this.selectEntrant.BackColor = System.Drawing.Color.Transparent;
            this.selectEntrant.Caption = "Entrant";
            this.selectEntrant.Location = new System.Drawing.Point(12, 12);
            this.selectEntrant.Name = "selectEntrant";
            this.selectEntrant.PeopleData = null;
            this.selectEntrant.SelectedID = null;
            this.selectEntrant.SelectedPerson = null;
            this.selectEntrant.Size = new System.Drawing.Size(325, 45);
            this.selectEntrant.TabIndex = 16;
            this.selectEntrant.PersonSelected += new System.EventHandler(this.selectEntrant_PersonSelected);
            // 
            // frmManageEntry
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(806, 522);
            this.Controls.Add(this.selectEntrant);
            this.Controls.Add(this.dgvDogClasses);
            this.Controls.Add(this.btnBack);
            this.MinimumSize = new System.Drawing.Size(820, 560);
            this.Name = "frmManageEntry";
            this.Text = "frmManageEntry";
            this.Load += new System.EventHandler(this.frmManageEntry_Load);
            this.Resize += new System.EventHandler(this.frmManageEntry_Resize);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDogClasses)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnBack;
        private System.Windows.Forms.DataGridView dgvDogClasses;
        private SelectPerson selectEntrant;
    }
}