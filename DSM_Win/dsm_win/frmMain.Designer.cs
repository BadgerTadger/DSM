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
            this.btnCatalogueList = new System.Windows.Forms.Button();
            this.pnlButtons.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(702, 334);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 23);
            this.btnExit.TabIndex = 5;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // MessageLabel
            // 
            this.MessageLabel.AutoSize = true;
            this.MessageLabel.Location = new System.Drawing.Point(19, 339);
            this.MessageLabel.Name = "MessageLabel";
            this.MessageLabel.Size = new System.Drawing.Size(35, 13);
            this.MessageLabel.TabIndex = 8;
            this.MessageLabel.Text = "label1";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 14;
            this.label1.Text = "Select Club";
            // 
            // cboClubs
            // 
            this.cboClubs.FormattingEnabled = true;
            this.cboClubs.Location = new System.Drawing.Point(8, 25);
            this.cboClubs.Name = "cboClubs";
            this.cboClubs.Size = new System.Drawing.Size(326, 21);
            this.cboClubs.TabIndex = 13;
            this.cboClubs.SelectedIndexChanged += new System.EventHandler(this.cboClubs_SelectedIndexChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(395, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 13);
            this.label2.TabIndex = 16;
            this.label2.Text = "Select Show";
            // 
            // cboShows
            // 
            this.cboShows.Enabled = false;
            this.cboShows.FormattingEnabled = true;
            this.cboShows.Location = new System.Drawing.Point(398, 25);
            this.cboShows.Name = "cboShows";
            this.cboShows.Size = new System.Drawing.Size(326, 21);
            this.cboShows.TabIndex = 15;
            this.cboShows.SelectedIndexChanged += new System.EventHandler(this.cboShows_SelectedIndexChanged);
            // 
            // pnlButtons
            // 
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
            this.pnlButtons.Location = new System.Drawing.Point(8, 52);
            this.pnlButtons.Name = "pnlButtons";
            this.pnlButtons.Size = new System.Drawing.Size(769, 267);
            this.pnlButtons.TabIndex = 17;
            // 
            // btnRunningOrders
            // 
            this.btnRunningOrders.Location = new System.Drawing.Point(403, 116);
            this.btnRunningOrders.Name = "btnRunningOrders";
            this.btnRunningOrders.Size = new System.Drawing.Size(126, 23);
            this.btnRunningOrders.TabIndex = 17;
            this.btnRunningOrders.Text = "Running Orders";
            this.btnRunningOrders.UseVisualStyleBackColor = true;
            this.btnRunningOrders.Click += new System.EventHandler(this.btnRunningOrders_Click);
            // 
            // btnUnallocateDogs
            // 
            this.btnUnallocateDogs.Location = new System.Drawing.Point(403, 87);
            this.btnUnallocateDogs.Name = "btnUnallocateDogs";
            this.btnUnallocateDogs.Size = new System.Drawing.Size(126, 23);
            this.btnUnallocateDogs.TabIndex = 16;
            this.btnUnallocateDogs.Text = "Unallocate Dogs";
            this.btnUnallocateDogs.UseVisualStyleBackColor = true;
            this.btnUnallocateDogs.Click += new System.EventHandler(this.btnUnallocateDogs_Click);
            // 
            // btnAllocateDogs
            // 
            this.btnAllocateDogs.Location = new System.Drawing.Point(403, 58);
            this.btnAllocateDogs.Name = "btnAllocateDogs";
            this.btnAllocateDogs.Size = new System.Drawing.Size(126, 23);
            this.btnAllocateDogs.TabIndex = 15;
            this.btnAllocateDogs.Text = "Allocate Dogs";
            this.btnAllocateDogs.UseVisualStyleBackColor = true;
            this.btnAllocateDogs.Click += new System.EventHandler(this.btnAllocateDogs_Click);
            // 
            // btnJudges
            // 
            this.btnJudges.Location = new System.Drawing.Point(14, 88);
            this.btnJudges.Name = "btnJudges";
            this.btnJudges.Size = new System.Drawing.Size(116, 23);
            this.btnJudges.TabIndex = 14;
            this.btnJudges.Text = "Judges";
            this.btnJudges.UseVisualStyleBackColor = true;
            this.btnJudges.Click += new System.EventHandler(this.btnJudges_Click);
            // 
            // btnClasses
            // 
            this.btnClasses.Location = new System.Drawing.Point(14, 58);
            this.btnClasses.Name = "btnClasses";
            this.btnClasses.Size = new System.Drawing.Size(116, 23);
            this.btnClasses.TabIndex = 13;
            this.btnClasses.Text = "Classes";
            this.btnClasses.UseVisualStyleBackColor = true;
            this.btnClasses.Click += new System.EventHandler(this.btnClasses_Click);
            // 
            // btnCommitSplitClasses
            // 
            this.btnCommitSplitClasses.Location = new System.Drawing.Point(271, 146);
            this.btnCommitSplitClasses.Name = "btnCommitSplitClasses";
            this.btnCommitSplitClasses.Size = new System.Drawing.Size(126, 23);
            this.btnCommitSplitClasses.TabIndex = 12;
            this.btnCommitSplitClasses.Text = "Commit Split Classes";
            this.btnCommitSplitClasses.UseVisualStyleBackColor = true;
            this.btnCommitSplitClasses.Click += new System.EventHandler(this.btnCommitSplitClasses_Click);
            // 
            // btnVerfiyPartRequests
            // 
            this.btnVerfiyPartRequests.Location = new System.Drawing.Point(271, 175);
            this.btnVerfiyPartRequests.Name = "btnVerfiyPartRequests";
            this.btnVerfiyPartRequests.Size = new System.Drawing.Size(126, 23);
            this.btnVerfiyPartRequests.TabIndex = 11;
            this.btnVerfiyPartRequests.Text = "Verify Part Requests";
            this.btnVerfiyPartRequests.UseVisualStyleBackColor = true;
            this.btnVerfiyPartRequests.Click += new System.EventHandler(this.btnVerfiyPartRequests_Click);
            // 
            // btnSplitClasses
            // 
            this.btnSplitClasses.Location = new System.Drawing.Point(271, 117);
            this.btnSplitClasses.Name = "btnSplitClasses";
            this.btnSplitClasses.Size = new System.Drawing.Size(126, 23);
            this.btnSplitClasses.TabIndex = 10;
            this.btnSplitClasses.Text = "Split Classes";
            this.btnSplitClasses.UseVisualStyleBackColor = true;
            this.btnSplitClasses.Click += new System.EventHandler(this.btnSplitClasses_Click);
            // 
            // btnRingNumbers
            // 
            this.btnRingNumbers.Location = new System.Drawing.Point(271, 88);
            this.btnRingNumbers.Name = "btnRingNumbers";
            this.btnRingNumbers.Size = new System.Drawing.Size(126, 23);
            this.btnRingNumbers.TabIndex = 9;
            this.btnRingNumbers.Text = "Ring Numbers";
            this.btnRingNumbers.UseVisualStyleBackColor = true;
            this.btnRingNumbers.Click += new System.EventHandler(this.btnRingNumbers_Click);
            // 
            // btnManageEntry
            // 
            this.btnManageEntry.Location = new System.Drawing.Point(271, 58);
            this.btnManageEntry.Name = "btnManageEntry";
            this.btnManageEntry.Size = new System.Drawing.Size(126, 23);
            this.btnManageEntry.TabIndex = 8;
            this.btnManageEntry.Text = "Manage Entry";
            this.btnManageEntry.UseVisualStyleBackColor = true;
            this.btnManageEntry.Click += new System.EventHandler(this.btnManageEntry_Click);
            // 
            // btnManageShows
            // 
            this.btnManageShows.Enabled = false;
            this.btnManageShows.Location = new System.Drawing.Point(728, 24);
            this.btnManageShows.Name = "btnManageShows";
            this.btnManageShows.Size = new System.Drawing.Size(54, 23);
            this.btnManageShows.TabIndex = 19;
            this.btnManageShows.Text = "Manage";
            this.btnManageShows.UseVisualStyleBackColor = true;
            this.btnManageShows.Click += new System.EventHandler(this.btnManageShows_Click);
            // 
            // btnCatalogueList
            // 
            this.btnCatalogueList.Location = new System.Drawing.Point(403, 146);
            this.btnCatalogueList.Name = "btnCatalogueList";
            this.btnCatalogueList.Size = new System.Drawing.Size(126, 23);
            this.btnCatalogueList.TabIndex = 18;
            this.btnCatalogueList.Text = "Catalogue List";
            this.btnCatalogueList.UseVisualStyleBackColor = true;
            this.btnCatalogueList.Click += new System.EventHandler(this.btnCatalogueList_Click);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(789, 364);
            this.Controls.Add(this.btnManageShows);
            this.Controls.Add(this.pnlButtons);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboClubs);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cboShows);
            this.Controls.Add(this.MessageLabel);
            this.Controls.Add(this.btnExit);
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
    }
}