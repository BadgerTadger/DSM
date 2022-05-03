namespace dsm_win
{
    partial class frmMain
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
            this.btnExit = new System.Windows.Forms.Button();
            this.MessageLabel = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cboClubs = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cboShows = new System.Windows.Forms.ComboBox();
            this.pnlButtons = new System.Windows.Forms.Panel();
            this.btnCatalogueList = new System.Windows.Forms.Button();
            this.btnRunningOrders = new System.Windows.Forms.Button();
            this.btnUnallocateDogs = new System.Windows.Forms.Button();
            this.btnAllocateDogs = new System.Windows.Forms.Button();
            this.btnJudges = new System.Windows.Forms.Button();
            this.btnClasses = new System.Windows.Forms.Button();
            this.btnCommitSplitClasses = new System.Windows.Forms.Button();
            this.btnVerfiyPartRequests = new System.Windows.Forms.Button();
            this.btnSplitClasses = new System.Windows.Forms.Button();
            this.btnRingNumbers = new System.Windows.Forms.Button();
            this.btnManageEntry = new System.Windows.Forms.Button();
            this.btnManageShows = new System.Windows.Forms.Button();
            this.btnImport = new System.Windows.Forms.Button();
            this.pnlButtons.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(936, 411);
            this.btnExit.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(100, 28);
            this.btnExit.TabIndex = 5;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // MessageLabel
            // 
            this.MessageLabel.AutoSize = true;
            this.MessageLabel.Location = new System.Drawing.Point(25, 417);
            this.MessageLabel.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.MessageLabel.Name = "MessageLabel";
            this.MessageLabel.Size = new System.Drawing.Size(46, 17);
            this.MessageLabel.TabIndex = 8;
            this.MessageLabel.Text = "label1";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 11);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(79, 17);
            this.label1.TabIndex = 14;
            this.label1.Text = "Select Club";
            // 
            // cboClubs
            // 
            this.cboClubs.FormattingEnabled = true;
            this.cboClubs.Location = new System.Drawing.Point(11, 31);
            this.cboClubs.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboClubs.Name = "cboClubs";
            this.cboClubs.Size = new System.Drawing.Size(433, 24);
            this.cboClubs.TabIndex = 13;
            this.cboClubs.SelectedIndexChanged += new System.EventHandler(this.cboClubs_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(527, 11);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 17);
            this.label2.TabIndex = 16;
            this.label2.Text = "Select Show";
            // 
            // cboShows
            // 
            this.cboShows.Enabled = false;
            this.cboShows.FormattingEnabled = true;
            this.cboShows.Location = new System.Drawing.Point(531, 31);
            this.cboShows.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.cboShows.Name = "cboShows";
            this.cboShows.Size = new System.Drawing.Size(433, 24);
            this.cboShows.TabIndex = 15;
            this.cboShows.SelectedIndexChanged += new System.EventHandler(this.cboShows_SelectedIndexChanged);
            // 
            // pnlButtons
            // 
            this.pnlButtons.Controls.Add(this.btnImport);
            this.pnlButtons.Controls.Add(this.btnCatalogueList);
            this.pnlButtons.Controls.Add(this.btnRunningOrders);
            this.pnlButtons.Controls.Add(this.btnUnallocateDogs);
            this.pnlButtons.Controls.Add(this.btnAllocateDogs);
            this.pnlButtons.Controls.Add(this.btnJudges);
            this.pnlButtons.Controls.Add(this.btnClasses);
            this.pnlButtons.Controls.Add(this.btnCommitSplitClasses);
            this.pnlButtons.Controls.Add(this.btnVerfiyPartRequests);
            this.pnlButtons.Controls.Add(this.btnSplitClasses);
            this.pnlButtons.Controls.Add(this.btnRingNumbers);
            this.pnlButtons.Controls.Add(this.btnManageEntry);
            this.pnlButtons.Enabled = false;
            this.pnlButtons.Location = new System.Drawing.Point(11, 64);
            this.pnlButtons.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pnlButtons.Name = "pnlButtons";
            this.pnlButtons.Size = new System.Drawing.Size(1025, 329);
            this.pnlButtons.TabIndex = 17;
            // 
            // btnCatalogueList
            // 
            this.btnCatalogueList.Location = new System.Drawing.Point(537, 180);
            this.btnCatalogueList.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnCatalogueList.Name = "btnCatalogueList";
            this.btnCatalogueList.Size = new System.Drawing.Size(168, 28);
            this.btnCatalogueList.TabIndex = 18;
            this.btnCatalogueList.Text = "Catalogue List";
            this.btnCatalogueList.UseVisualStyleBackColor = true;
            this.btnCatalogueList.Click += new System.EventHandler(this.btnCatalogueList_Click);
            // 
            // btnRunningOrders
            // 
            this.btnRunningOrders.Location = new System.Drawing.Point(537, 143);
            this.btnRunningOrders.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnRunningOrders.Name = "btnRunningOrders";
            this.btnRunningOrders.Size = new System.Drawing.Size(168, 28);
            this.btnRunningOrders.TabIndex = 17;
            this.btnRunningOrders.Text = "Running Orders";
            this.btnRunningOrders.UseVisualStyleBackColor = true;
            this.btnRunningOrders.Click += new System.EventHandler(this.btnRunningOrders_Click);
            // 
            // btnUnallocateDogs
            // 
            this.btnUnallocateDogs.Location = new System.Drawing.Point(537, 107);
            this.btnUnallocateDogs.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnUnallocateDogs.Name = "btnUnallocateDogs";
            this.btnUnallocateDogs.Size = new System.Drawing.Size(168, 28);
            this.btnUnallocateDogs.TabIndex = 16;
            this.btnUnallocateDogs.Text = "Unallocate Dogs";
            this.btnUnallocateDogs.UseVisualStyleBackColor = true;
            this.btnUnallocateDogs.Click += new System.EventHandler(this.btnUnallocateDogs_Click);
            // 
            // btnAllocateDogs
            // 
            this.btnAllocateDogs.Location = new System.Drawing.Point(537, 71);
            this.btnAllocateDogs.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnAllocateDogs.Name = "btnAllocateDogs";
            this.btnAllocateDogs.Size = new System.Drawing.Size(168, 28);
            this.btnAllocateDogs.TabIndex = 15;
            this.btnAllocateDogs.Text = "Allocate Dogs";
            this.btnAllocateDogs.UseVisualStyleBackColor = true;
            this.btnAllocateDogs.Click += new System.EventHandler(this.btnAllocateDogs_Click);
            // 
            // btnJudges
            // 
            this.btnJudges.Location = new System.Drawing.Point(19, 108);
            this.btnJudges.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnJudges.Name = "btnJudges";
            this.btnJudges.Size = new System.Drawing.Size(155, 28);
            this.btnJudges.TabIndex = 14;
            this.btnJudges.Text = "Judges";
            this.btnJudges.UseVisualStyleBackColor = true;
            this.btnJudges.Click += new System.EventHandler(this.btnJudges_Click);
            // 
            // btnClasses
            // 
            this.btnClasses.Location = new System.Drawing.Point(19, 71);
            this.btnClasses.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnClasses.Name = "btnClasses";
            this.btnClasses.Size = new System.Drawing.Size(155, 28);
            this.btnClasses.TabIndex = 13;
            this.btnClasses.Text = "Classes";
            this.btnClasses.UseVisualStyleBackColor = true;
            this.btnClasses.Click += new System.EventHandler(this.btnClasses_Click);
            // 
            // btnCommitSplitClasses
            // 
            this.btnCommitSplitClasses.Location = new System.Drawing.Point(361, 180);
            this.btnCommitSplitClasses.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnCommitSplitClasses.Name = "btnCommitSplitClasses";
            this.btnCommitSplitClasses.Size = new System.Drawing.Size(168, 28);
            this.btnCommitSplitClasses.TabIndex = 12;
            this.btnCommitSplitClasses.Text = "Commit Split Classes";
            this.btnCommitSplitClasses.UseVisualStyleBackColor = true;
            this.btnCommitSplitClasses.Click += new System.EventHandler(this.btnCommitSplitClasses_Click);
            // 
            // btnVerfiyPartRequests
            // 
            this.btnVerfiyPartRequests.Location = new System.Drawing.Point(361, 215);
            this.btnVerfiyPartRequests.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnVerfiyPartRequests.Name = "btnVerfiyPartRequests";
            this.btnVerfiyPartRequests.Size = new System.Drawing.Size(168, 28);
            this.btnVerfiyPartRequests.TabIndex = 11;
            this.btnVerfiyPartRequests.Text = "Verify Part Requests";
            this.btnVerfiyPartRequests.UseVisualStyleBackColor = true;
            this.btnVerfiyPartRequests.Click += new System.EventHandler(this.btnVerfiyPartRequests_Click);
            // 
            // btnSplitClasses
            // 
            this.btnSplitClasses.Location = new System.Drawing.Point(361, 144);
            this.btnSplitClasses.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnSplitClasses.Name = "btnSplitClasses";
            this.btnSplitClasses.Size = new System.Drawing.Size(168, 28);
            this.btnSplitClasses.TabIndex = 10;
            this.btnSplitClasses.Text = "Split Classes";
            this.btnSplitClasses.UseVisualStyleBackColor = true;
            this.btnSplitClasses.Click += new System.EventHandler(this.btnSplitClasses_Click);
            // 
            // btnRingNumbers
            // 
            this.btnRingNumbers.Location = new System.Drawing.Point(361, 108);
            this.btnRingNumbers.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnRingNumbers.Name = "btnRingNumbers";
            this.btnRingNumbers.Size = new System.Drawing.Size(168, 28);
            this.btnRingNumbers.TabIndex = 9;
            this.btnRingNumbers.Text = "Ring Numbers";
            this.btnRingNumbers.UseVisualStyleBackColor = true;
            this.btnRingNumbers.Click += new System.EventHandler(this.btnRingNumbers_Click);
            // 
            // btnManageEntry
            // 
            this.btnManageEntry.Location = new System.Drawing.Point(361, 71);
            this.btnManageEntry.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnManageEntry.Name = "btnManageEntry";
            this.btnManageEntry.Size = new System.Drawing.Size(168, 28);
            this.btnManageEntry.TabIndex = 8;
            this.btnManageEntry.Text = "Manage Entry";
            this.btnManageEntry.UseVisualStyleBackColor = true;
            this.btnManageEntry.Click += new System.EventHandler(this.btnManageEntry_Click);
            // 
            // btnManageShows
            // 
            this.btnManageShows.Enabled = false;
            this.btnManageShows.Location = new System.Drawing.Point(971, 30);
            this.btnManageShows.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnManageShows.Name = "btnManageShows";
            this.btnManageShows.Size = new System.Drawing.Size(72, 28);
            this.btnManageShows.TabIndex = 19;
            this.btnManageShows.Text = "Manage";
            this.btnManageShows.UseVisualStyleBackColor = true;
            this.btnManageShows.Click += new System.EventHandler(this.btnManageShows_Click);
            // 
            // btnImport
            // 
            this.btnImport.Location = new System.Drawing.Point(17, 180);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(155, 28);
            this.btnImport.TabIndex = 19;
            this.btnImport.Text = "Import Data";
            this.btnImport.UseVisualStyleBackColor = true;
            this.btnImport.Click += new System.EventHandler(this.btnImport_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1052, 448);
            this.Controls.Add(this.btnManageShows);
            this.Controls.Add(this.pnlButtons);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboClubs);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cboShows);
            this.Controls.Add(this.MessageLabel);
            this.Controls.Add(this.btnExit);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmMain";
            this.Text = "Main";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.pnlButtons.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Label MessageLabel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cboClubs;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cboShows;
        private System.Windows.Forms.Panel pnlButtons;
        private System.Windows.Forms.Button btnCommitSplitClasses;
        private System.Windows.Forms.Button btnVerfiyPartRequests;
        private System.Windows.Forms.Button btnSplitClasses;
        private System.Windows.Forms.Button btnRingNumbers;
        private System.Windows.Forms.Button btnManageEntry;
        private System.Windows.Forms.Button btnManageShows;
        private System.Windows.Forms.Button btnClasses;
        private System.Windows.Forms.Button btnJudges;
        private System.Windows.Forms.Button btnAllocateDogs;
        private System.Windows.Forms.Button btnUnallocateDogs;
        private System.Windows.Forms.Button btnRunningOrders;
        private System.Windows.Forms.Button btnCatalogueList;
        private System.Windows.Forms.Button btnImport;
    }
}