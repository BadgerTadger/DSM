USE [sussexsoftwaresolutions]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__4959E263]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__4959E263]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__4959E263]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__4A4E069C]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__4A4E069C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__4A4E069C]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__4B422AD5]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__4B422AD5]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__4B422AD5]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4C364F0E]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4C364F0E]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4C364F0E]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__4D2A7347]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__4D2A7347]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__4D2A7347]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__4E1E9780]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__4E1E9780]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__4E1E9780]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__4F12BBB9]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__4F12BBB9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__4F12BBB9]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__5006DFF2]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__5006DFF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__5006DFF2]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__50FB042B]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__50FB042B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__50FB042B]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__51EF2864]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__51EF2864]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__51EF2864]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__52E34C9D]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__52E34C9D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__52E34C9D]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK1]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK2]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK3]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3]
GO
/****** Object:  ForeignKey [lkpClass_Names_tblShow_Entry_Classes_FK1]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [aspnet_Users_tblAddresses_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [aspnet_Users_tblAddresses_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [aspnet_Users_tblAddresses_FK3]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [aspnet_Users_tblPeople_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [aspnet_Users_tblPeople_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [aspnet_Users_tblPeople_FK3]
GO
/****** Object:  ForeignKey [tblAddresses_tblPeople_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [tblAddresses_tblPeople_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkUser_Person_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [aspnet_Users_lnkUser_Person_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkUser_Person_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [aspnet_Users_lnkUser_Person_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkUser_Person_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [aspnet_Users_lnkUser_Person_FK3]
GO
/****** Object:  ForeignKey [tblPeople_lnkUser_Person_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [tblPeople_lnkUser_Person_FK2]
GO
/****** Object:  ForeignKey [tblUsers_lnkUser_Person_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [tblUsers_lnkUser_Person_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [aspnet_Users_tblVenues_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [aspnet_Users_tblVenues_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [aspnet_Users_tblVenues_FK3]
GO
/****** Object:  ForeignKey [tblAddresses_tblVenues_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [tblAddresses_tblVenues_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblVenues_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [tblPeople_tblVenues_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [aspnet_Users_tblClubs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [aspnet_Users_tblClubs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [aspnet_Users_tblClubs_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblClubs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [tblPeople_tblClubs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [aspnet_Users_tblDogs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [aspnet_Users_tblDogs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [aspnet_Users_tblDogs_FK3]
GO
/****** Object:  ForeignKey [lkpDog_Breeds_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [lkpDog_Breeds_tblDogs_FK1]
GO
/****** Object:  ForeignKey [lkpDog_Gender_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [lkpDog_Gender_tblDogs_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [tblPeople_tblDogs_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDogs_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [tblPeople_tblDogs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [aspnet_Users_tblShows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [aspnet_Users_tblShows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [aspnet_Users_tblShows_FK3]
GO
/****** Object:  ForeignKey [lkpShow_Types_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [lkpShow_Types_tblShows_FK1]
GO
/****** Object:  ForeignKey [lkpShow_Years_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [lkpShow_Years_tblShows_FK1]
GO
/****** Object:  ForeignKey [tblClubs_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [tblClubs_tblShows_FK1]
GO
/****** Object:  ForeignKey [tblVenues_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [tblVenues_tblShows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [aspnet_Users_lnkDog_Sires_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [aspnet_Users_lnkDog_Sires_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [aspnet_Users_lnkDog_Sires_FK3]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Sires_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [tblDogs_lnkDog_Sires_FK1]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Sires_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [tblDogs_lnkDog_Sires_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [aspnet_Users_lnkDog_Dams_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [aspnet_Users_lnkDog_Dams_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [aspnet_Users_lnkDog_Dams_FK3]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Dams_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [tblDogs_lnkDog_Dams_FK1]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Dams_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [tblDogs_lnkDog_Dams_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkLinked_Shows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkLinked_Shows_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkLinked_Shows_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3]
GO
/****** Object:  ForeignKey [tblShows_lnkLinked_Shows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [tblShows_lnkLinked_Shows_FK1]
GO
/****** Object:  ForeignKey [tblShows_lnkLinked_Shows_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [tblShows_lnkLinked_Shows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [tblShows_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK7]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK8]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8]
GO
/****** Object:  ForeignKey [lkpShow_Roles_tblShow_Helpers_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblShow_Helpers_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [tblPeople_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblShow_Helpers_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [tblShows_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [aspnet_Users_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [aspnet_Users_tblGuarantors_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [aspnet_Users_tblGuarantors_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK2]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK4]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK4]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK5]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK5]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK6]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK6]
GO
/****** Object:  ForeignKey [tblShows_tblGuarantors_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblShows_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [aspnet_Users_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [aspnet_Users_tblEntrants_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [aspnet_Users_tblEntrants_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblEntrants_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [tblPeople_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblEntrants_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [tblShows_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [aspnet_Users_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [aspnet_Users_tblDog_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [aspnet_Users_tblDog_Classes_FK3]
GO
/****** Object:  ForeignKey [tblDogs_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblDogs_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblEntrants_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblEntrants_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblPeople_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Entry_Classes_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Final_Classes_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassByDog_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassByDog_Class_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_ClassByDog_Class_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByDog_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByDog_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_ClassesByDog_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByEntrant_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByEntrant_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_ClassesByEntrant_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByHandler_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByHandler_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_ClassesByHandler_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByShow_Entry_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByShow_Entry_Class_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_ClassesByShow_Entry_Class_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByShow_Final_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByShow_Final_Class_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_ClassesByShow_Final_Class_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetRunningOrderForClass]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetRunningOrderForClass]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetRunningOrderForClass]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblDog_Classes]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblDog_Classes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblDog_Classes]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblDog_Classes]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblDog_Classes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblDog_Classes]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkLinked_Shows]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkLinked_Shows]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_lnkLinked_Shows]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Final_Classes]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Final_Classes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblShow_Final_Classes]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Helpers]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Helpers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblShow_Helpers]
GO
/****** Object:  Table [dbo].[tblDog_Classes]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [aspnet_Users_tblDog_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [aspnet_Users_tblDog_Classes_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [aspnet_Users_tblDog_Classes_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblDogs_tblDog_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblEntrants_tblDog_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblPeople_tblDog_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDog_Cl__Dog_C__29E1370A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDog_Classes] DROP CONSTRAINT [DF__tblDog_Cl__Dog_C__29E1370A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]') AND type in (N'U'))
DROP TABLE [dbo].[tblDog_Classes]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkLinked_Shows]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkLinked_Shows]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_lnkLinked_Shows]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblEntrants]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblEntrants]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblEntrants]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblGuarantors]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblGuarantors]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblGuarantors]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Final_Classes]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Final_Classes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblShow_Final_Classes]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Helpers]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Helpers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblShow_Helpers]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Final_ClassByShow_Final_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Final_ClassByShow_Final_Class_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_Final_ClassByShow_Final_Class_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Final_ClassesByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Final_ClassesByShow_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_Final_ClassesByShow_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_HelperByShow_Helper_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_HelperByShow_Helper_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_HelperByShow_Helper_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_HelpersByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_HelpersByShow_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_HelpersByShow_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetEntrantByEntrant_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetEntrantByEntrant_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetEntrantByEntrant_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetEntrantsByPerson_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetEntrantsByPerson_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetEntrantsByPerson_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetEntrantsByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetEntrantsByShow_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetEntrantsByShow_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetGuarantorByGuarantor_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetGuarantorByGuarantor_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetGuarantorByGuarantor_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetGuarantorsByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetGuarantorsByShow_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetGuarantorsByShow_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetLinked_ShowByChild_Show_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLinked_ShowByChild_Show_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLinked_ShowByChild_Show_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetLinked_ShowByLinked_Show_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLinked_ShowByLinked_Show_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLinked_ShowByLinked_Show_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetLinked_ShowsByParent_Show_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLinked_ShowsByParent_Show_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetLinked_ShowsByParent_Show_ID]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblEntrants]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblEntrants]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblEntrants]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblGuarantors]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblGuarantors]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblGuarantors]
GO
/****** Object:  Table [dbo].[lnkLinked_Shows]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [tblShows_lnkLinked_Shows_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [tblShows_lnkLinked_Shows_FK2]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkLinked__Linke__214BF109]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkLinked_Shows] DROP CONSTRAINT [DF__lnkLinked__Linke__214BF109]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]') AND type in (N'U'))
DROP TABLE [dbo].[lnkLinked_Shows]
GO
/****** Object:  Table [dbo].[tblGuarantors]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [aspnet_Users_tblGuarantors_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [aspnet_Users_tblGuarantors_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [aspnet_Users_tblGuarantors_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK4]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK5]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblPeople_tblGuarantors_FK6]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [tblShows_tblGuarantors_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblGuaran__Guara__078C1F06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblGuarantors] DROP CONSTRAINT [DF__tblGuaran__Guara__078C1F06]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuarantors]') AND type in (N'U'))
DROP TABLE [dbo].[tblGuarantors]
GO
/****** Object:  Table [dbo].[tblShow_Final_Classes]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [tblShows_tblShow_Final_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_F__Show___73852659]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Final_Classes] DROP CONSTRAINT [DF__tblShow_F__Show___73852659]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]') AND type in (N'U'))
DROP TABLE [dbo].[tblShow_Final_Classes]
GO
/****** Object:  Table [dbo].[tblShow_Helpers]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [tblPeople_tblShow_Helpers_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [tblShows_tblShow_Helpers_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_H__Show___01D345B0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Helpers] DROP CONSTRAINT [DF__tblShow_H__Show___01D345B0]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]') AND type in (N'U'))
DROP TABLE [dbo].[tblShow_Helpers]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_SireByDog_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_SireByDog_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_SireByDog_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_SireByDog_Sire_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_SireByDog_Sire_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_SireByDog_Sire_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_SiresBySire_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_SiresBySire_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_SiresBySire_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_DamByDog_Dam_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_DamByDog_Dam_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_DamByDog_Dam_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_DamByDog_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_DamByDog_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_DamByDog_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_DamsByDam_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_DamsByDam_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_DamsByDam_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShowByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowByShow_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShowByShow_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByClub_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByClub_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShowsByClub_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByShow_Type_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByShow_Type_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShowsByShow_Type_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByShow_Year_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByShow_Year_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShowsByShow_Year_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByVenue_ID]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByVenue_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShowsByVenue_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsLikeShow_Name]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsLikeShow_Name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShowsLikeShow_Name]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShows]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShows]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblShows]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkDog_Dams]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkDog_Dams]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_lnkDog_Dams]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkDog_Sires]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkDog_Sires]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_lnkDog_Sires]
GO
/****** Object:  Table [dbo].[tblEntrants]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [aspnet_Users_tblEntrants_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [aspnet_Users_tblEntrants_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [aspnet_Users_tblEntrants_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [tblPeople_tblEntrants_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [tblShows_tblEntrants_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblEntran__Entra__1A9EF37A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblEntrants] DROP CONSTRAINT [DF__tblEntran__Entra__1A9EF37A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants]') AND type in (N'U'))
DROP TABLE [dbo].[tblEntrants]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShows]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShows]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblShows]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblVenues]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblVenues]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblVenues]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkDog_Dams]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkDog_Dams]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_lnkDog_Dams]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkDog_Sires]    Script Date: 05/09/2013 14:45:27 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkDog_Sires]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_lnkDog_Sires]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkUser_Person]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkUser_Person]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_lnkUser_Person]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblDogs]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblDogs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblDogs]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblClubs]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblClubs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblClubs]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblClubs]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblClubs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblClubs]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkUser_Person]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkUser_Person]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_lnkUser_Person]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblDogs]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblDogs]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblDogs]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblVenues]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblVenues]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblVenues]
GO
/****** Object:  StoredProcedure [dbo].[spGetUser_PersonByPerson_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetUser_PersonByPerson_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetUser_PersonByPerson_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetUser_PersonByUser_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetUser_PersonByUser_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetUser_PersonByUser_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetUser_PersonByUser_Person_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetUser_PersonByUser_Person_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetUser_PersonByUser_Person_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetVenueByAddress_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetVenueByAddress_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetVenueByAddress_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetVenueByVenue_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetVenueByVenue_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetVenueByVenue_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetVenuesLikeVenue_Name]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetVenuesLikeVenue_Name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetVenuesLikeVenue_Name]
GO
/****** Object:  StoredProcedure [dbo].[spGetClubByClub_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubByClub_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetClubByClub_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetClubsByClub_Contact]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubsByClub_Contact]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetClubsByClub_Contact]
GO
/****** Object:  StoredProcedure [dbo].[spGetClubsByClub_Short_Name]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubsByClub_Short_Name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetClubsByClub_Short_Name]
GO
/****** Object:  StoredProcedure [dbo].[spGetClubsLikeClub_Long_Name]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubsLikeClub_Long_Name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetClubsLikeClub_Long_Name]
GO
/****** Object:  StoredProcedure [dbo].[spGetDogByDog_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogByDog_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDogByDog_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsByDog_Breed_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsByDog_Breed_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDogsByDog_Breed_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsByOwner_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsByOwner_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDogsByOwner_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsLikeDog_KC_Name]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsLikeDog_KC_Name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDogsLikeDog_KC_Name]
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsLikeDog_Pet_Name]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsLikeDog_Pet_Name]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDogsLikeDog_Pet_Name]
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsWhereDog_Breed_IDInList]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsWhereDog_Breed_IDInList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDogsWhereDog_Breed_IDInList]
GO
/****** Object:  Table [dbo].[tblShows]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [aspnet_Users_tblShows_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [aspnet_Users_tblShows_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [aspnet_Users_tblShows_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [lkpShow_Types_tblShows_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [lkpShow_Years_tblShows_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [tblClubs_tblShows_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [tblVenues_tblShows_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShows__Show_I__719CDDE7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShows] DROP CONSTRAINT [DF__tblShows__Show_I__719CDDE7]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShows]') AND type in (N'U'))
DROP TABLE [dbo].[tblShows]
GO
/****** Object:  Table [dbo].[lnkDog_Dams]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [aspnet_Users_lnkDog_Dams_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [aspnet_Users_lnkDog_Dams_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [aspnet_Users_lnkDog_Dams_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [tblDogs_lnkDog_Dams_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [tblDogs_lnkDog_Dams_FK2]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Da__Dog_D__6442E2C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Dams] DROP CONSTRAINT [DF__lnkDog_Da__Dog_D__6442E2C9]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]') AND type in (N'U'))
DROP TABLE [dbo].[lnkDog_Dams]
GO
/****** Object:  Table [dbo].[lnkDog_Sires]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [aspnet_Users_lnkDog_Sires_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [aspnet_Users_lnkDog_Sires_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [aspnet_Users_lnkDog_Sires_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [tblDogs_lnkDog_Sires_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [tblDogs_lnkDog_Sires_FK2]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Si__Dog_S__6166761E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Sires] DROP CONSTRAINT [DF__lnkDog_Si__Dog_S__6166761E]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]') AND type in (N'U'))
DROP TABLE [dbo].[lnkDog_Sires]
GO
/****** Object:  Table [dbo].[lnkUser_Person]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [aspnet_Users_lnkUser_Person_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [aspnet_Users_lnkUser_Person_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [aspnet_Users_lnkUser_Person_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [tblPeople_lnkUser_Person_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [tblUsers_lnkUser_Person_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkUser_P__User___5E8A0973]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkUser_Person] DROP CONSTRAINT [DF__lnkUser_P__User___5E8A0973]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]') AND type in (N'U'))
DROP TABLE [dbo].[lnkUser_Person]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblPeople]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblPeople]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblPeople]
GO
/****** Object:  Table [dbo].[tblVenues]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [aspnet_Users_tblVenues_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [aspnet_Users_tblVenues_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [aspnet_Users_tblVenues_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [tblAddresses_tblVenues_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [tblPeople_tblVenues_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblVenues__Venue__4E53A1AA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblVenues] DROP CONSTRAINT [DF__tblVenues__Venue__4E53A1AA]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues]') AND type in (N'U'))
DROP TABLE [dbo].[tblVenues]
GO
/****** Object:  StoredProcedure [dbo].[spGetPeopleByAddress_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPeopleByAddress_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPeopleByAddress_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetPeopleByPerson_Surname]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPeopleByPerson_Surname]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPeopleByPerson_Surname]
GO
/****** Object:  StoredProcedure [dbo].[spGetPeopleLikePerson_Forename]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPeopleLikePerson_Forename]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPeopleLikePerson_Forename]
GO
/****** Object:  StoredProcedure [dbo].[spGetPersonByPerson_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPersonByPerson_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetPersonByPerson_ID]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblPeople]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblPeople]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblPeople]
GO
/****** Object:  Table [dbo].[tblClubs]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [aspnet_Users_tblClubs_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [aspnet_Users_tblClubs_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [aspnet_Users_tblClubs_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [tblPeople_tblClubs_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblClubs__Club_I__5224328E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblClubs] DROP CONSTRAINT [DF__tblClubs__Club_I__5224328E]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs]') AND type in (N'U'))
DROP TABLE [dbo].[tblClubs]
GO
/****** Object:  Table [dbo].[tblDogs]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [aspnet_Users_tblDogs_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [aspnet_Users_tblDogs_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [aspnet_Users_tblDogs_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [lkpDog_Breeds_tblDogs_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [lkpDog_Gender_tblDogs_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [tblPeople_tblDogs_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [tblPeople_tblDogs_FK2]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDogs__Dog_ID__55009F39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDogs] DROP CONSTRAINT [DF__tblDogs__Dog_ID__55009F39]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs]') AND type in (N'U'))
DROP TABLE [dbo].[tblDogs]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblAddresses]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblAddresses]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblAddresses]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Entry_Classes]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Entry_Classes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblShow_Entry_Classes]
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblAddresses]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblAddresses]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spInsert_tblAddresses]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Entry_ClassByShow_Entry_Class_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Entry_ClassByShow_Entry_Class_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_Entry_ClassByShow_Entry_Class_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Entry_ClassesByShow_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Entry_ClassesByShow_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_Entry_ClassesByShow_ID]
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Entry_Classes]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Entry_Classes]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spUpdate_tblShow_Entry_Classes]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  Table [dbo].[tblPeople]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [aspnet_Users_tblPeople_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [aspnet_Users_tblPeople_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [aspnet_Users_tblPeople_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [tblAddresses_tblPeople_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblPeople__Perso__45BE5BA9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblPeople] DROP CONSTRAINT [DF__tblPeople__Perso__45BE5BA9]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople]') AND type in (N'U'))
DROP TABLE [dbo].[tblPeople]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressByAddress_ID]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressByAddress_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressByAddress_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_1]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_1]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressesLikeAddress_1]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_2]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressesLikeAddress_2]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_City]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_City]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressesLikeAddress_City]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_County]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_County]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressesLikeAddress_County]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_Postcode]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_Postcode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressesLikeAddress_Postcode]
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_Town]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_Town]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetAddressesLikeAddress_Town]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__51EF2864]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__RoleI__51EF2864]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__52E34C9D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles] DROP CONSTRAINT [FK__aspnet_Us__UserI__52E34C9D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__50FB042B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] DROP CONSTRAINT [FK__aspnet_Pe__PathI__50FB042B]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__4F12BBB9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__Appli__4F12BBB9]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__5006DFF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [FK__aspnet_Me__UserI__5006DFF2]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Me__Passw__02084FDA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Membership] DROP CONSTRAINT [DF__aspnet_Me__Passw__02084FDA]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Membership]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__4E1E9780]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile] DROP CONSTRAINT [FK__aspnet_Pr__UserI__4E1E9780]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Profile]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4C364F0E]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__PathI__4C364F0E]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__4D2A7347]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [FK__aspnet_Pe__UserI__4D2A7347]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Perso__Id__797309D9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] DROP CONSTRAINT [DF__aspnet_Perso__Id__797309D9]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  Table [dbo].[tblShow_Entry_Classes]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_E__Show___6EF57B66]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Entry_Classes] DROP CONSTRAINT [DF__tblShow_E__Show___6EF57B66]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]') AND type in (N'U'))
DROP TABLE [dbo].[tblShow_Entry_Classes]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  Table [dbo].[tblAddresses]    Script Date: 05/09/2013 14:45:26 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [aspnet_Users_tblAddresses_FK1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [aspnet_Users_tblAddresses_FK2]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [aspnet_Users_tblAddresses_FK3]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblAddres__Addre__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblAddresses] DROP CONSTRAINT [DF__tblAddres__Addre__74AE54BC]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses]') AND type in (N'U'))
DROP TABLE [dbo].[tblAddresses]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_BreedByDog_Breed_ID]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_BreedByDog_Breed_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_BreedByDog_Breed_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_Breeds]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_Breeds]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_Breeds]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_BreedsLikeDog_Breed_Description]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_BreedsLikeDog_Breed_Description]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_BreedsLikeDog_Breed_Description]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_Gender]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_Gender]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_Gender]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_GenderByDog_Gender_ID]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_GenderByDog_Gender_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_GenderByDog_Gender_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_GenderLikeDog_Gender]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_GenderLikeDog_Gender]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetDog_GenderLikeDog_Gender]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_RoleByShow_Role_ID]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_RoleByShow_Role_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_RoleByShow_Role_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_RolesLikeShow_Role_Description]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_RolesLikeShow_Role_Description]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_RolesLikeShow_Role_Description]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_TypesByShow_Type_ID]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_TypesByShow_Type_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_TypesByShow_Type_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_TypesLikeShow_Type_Description]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_TypesLikeShow_Type_Description]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_TypesLikeShow_Type_Description]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_YearByShow_Year]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_YearByShow_Year]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_YearByShow_Year]
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_YearsByShow_Year_ID]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_YearsByShow_Year_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetShow_YearsByShow_Year_ID]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__4B422AD5]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [FK__aspnet_Ro__Appli__4B422AD5]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ro__RoleI__60A75C0F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Roles] DROP CONSTRAINT [DF__aspnet_Ro__RoleI__60A75C0F]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__4A4E069C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [FK__aspnet_Pa__Appli__4A4E069C]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Pa__PathI__5AEE82B9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Paths] DROP CONSTRAINT [DF__aspnet_Pa__PathI__5AEE82B9]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  StoredProcedure [dbo].[spGetClass_NameByClass_Name_ID]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClass_NameByClass_Name_ID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetClass_NameByClass_Name_ID]
GO
/****** Object:  StoredProcedure [dbo].[spGetClass_NamesLikeClass_Name_Description]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClass_NamesLikeClass_Name_Description]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[spGetClass_NamesLikeClass_Name_Description]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 05/09/2013 14:45:25 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__4959E263]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [FK__aspnet_Us__Appli__4959E263]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__UserI__4E88ABD4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__UserI__4E88ABD4]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__Mobil__4F7CD00D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__Mobil__4F7CD00D]
END
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Us__IsAno__5070F446]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Users] DROP CONSTRAINT [DF__aspnet_Us__IsAno__5070F446]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Users]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_SchemaVersions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 05/09/2013 14:45:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_WebEvent_Events]
GO
/****** Object:  Table [dbo].[lnkUser_Person_Audit]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkUser_P__User___403A8C7D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkUser_Person_Audit] DROP CONSTRAINT [DF__lnkUser_P__User___403A8C7D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkUser_Person_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[lnkUser_Person_Audit]
GO
/****** Object:  Table [dbo].[lnkDog_Sires_Audit]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Si__Dog_S__3D5E1FD2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Sires_Audit] DROP CONSTRAINT [DF__lnkDog_Si__Dog_S__3D5E1FD2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[lnkDog_Sires_Audit]
GO
/****** Object:  Table [dbo].[lnkLinked_Shows_Audit]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkLinked__Linke__3A81B327]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkLinked_Shows_Audit] DROP CONSTRAINT [DF__lnkLinked__Linke__3A81B327]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[lnkLinked_Shows_Audit]
GO
/****** Object:  Table [dbo].[lnkDog_Dams_Audit]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__lnkDog_Da__Dog_D__37A5467C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[lnkDog_Dams_Audit] DROP CONSTRAINT [DF__lnkDog_Da__Dog_D__37A5467C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[lnkDog_Dams_Audit]
GO
/****** Object:  Table [dbo].[lkpClass_Names]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names]') AND type in (N'U'))
DROP TABLE [dbo].[lkpClass_Names]
GO
/****** Object:  Table [dbo].[lkpDog_Breeds]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds]') AND type in (N'U'))
DROP TABLE [dbo].[lkpDog_Breeds]
GO
/****** Object:  Table [dbo].[lkpDog_Gender]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender]') AND type in (N'U'))
DROP TABLE [dbo].[lkpDog_Gender]
GO
/****** Object:  Table [dbo].[lkpShow_Roles]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[lkpShow_Roles]
GO
/****** Object:  Table [dbo].[lkpShow_Types]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types]') AND type in (N'U'))
DROP TABLE [dbo].[lkpShow_Types]
GO
/****** Object:  Table [dbo].[lkpShow_Years]    Script Date: 05/09/2013 14:45:23 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years]') AND type in (N'U'))
DROP TABLE [dbo].[lkpShow_Years]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 05/09/2013 14:45:22 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__aspnet_Ap__Appli__29572725]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aspnet_Applications] DROP CONSTRAINT [DF__aspnet_Ap__Appli__29572725]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
DROP TABLE [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[tblVenues_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblVenues__Venue__0DAF0CB0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblVenues_Audit] DROP CONSTRAINT [DF__tblVenues__Venue__0DAF0CB0]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblVenues_Audit]
GO
/****** Object:  Table [dbo].[tblShow_Entry_Classes_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_E__Show___07F6335A]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Entry_Classes_Audit] DROP CONSTRAINT [DF__tblShow_E__Show___07F6335A]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblShow_Entry_Classes_Audit]
GO
/****** Object:  Table [dbo].[tblGuarantors_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblGuaran__Guara__0519C6AF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblGuarantors_Audit] DROP CONSTRAINT [DF__tblGuaran__Guara__0519C6AF]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuarantors_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblGuarantors_Audit]
GO
/****** Object:  Table [dbo].[tblPeople_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblPeople__Perso__164452B1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblPeople_Audit] DROP CONSTRAINT [DF__tblPeople__Perso__164452B1]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblPeople_Audit]
GO
/****** Object:  Table [dbo].[tblShows_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShows___Show___0AD2A005]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShows_Audit] DROP CONSTRAINT [DF__tblShows___Show___0AD2A005]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblShows_Audit]
GO
/****** Object:  Table [dbo].[tblShow_Helpers_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_H__Show___023D5A04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Helpers_Audit] DROP CONSTRAINT [DF__tblShow_H__Show___023D5A04]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblShow_Helpers_Audit]
GO
/****** Object:  Table [dbo].[tblShow_Final_Classes_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblShow_F__Show___7F60ED59]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblShow_Final_Classes_Audit] DROP CONSTRAINT [DF__tblShow_F__Show___7F60ED59]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblShow_Final_Classes_Audit]
GO
/****** Object:  UserDefinedFunction [dbo].[fnSplitter]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSplitter]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnSplitter]
GO
/****** Object:  Table [dbo].[tblAddresses_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblAddres__Addre__1ED998B2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblAddresses_Audit] DROP CONSTRAINT [DF__tblAddres__Addre__1ED998B2]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblAddresses_Audit]
GO
/****** Object:  Table [dbo].[tblClubs_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblClubs___Club___1BFD2C07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblClubs_Audit] DROP CONSTRAINT [DF__tblClubs___Club___1BFD2C07]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblClubs_Audit]
GO
/****** Object:  Table [dbo].[tblDogs_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDogs_A__Dog_A__1367E606]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDogs_Audit] DROP CONSTRAINT [DF__tblDogs_A__Dog_A__1367E606]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblDogs_Audit]
GO
/****** Object:  Table [dbo].[tblEntrants_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblEntran__Entra__108B795B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblEntrants_Audit] DROP CONSTRAINT [DF__tblEntran__Entra__108B795B]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblEntrants_Audit]
GO
/****** Object:  Table [dbo].[tblDog_Classes_Audit]    Script Date: 05/09/2013 14:45:24 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__tblDog_Cl__Dog_C__1920BF5C]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblDog_Classes_Audit] DROP CONSTRAINT [DF__tblDog_Cl__Dog_C__1920BF5C]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDog_Classes_Audit]') AND type in (N'U'))
DROP TABLE [dbo].[tblDog_Classes_Audit]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 05/09/2013 14:45:20 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Table [dbo].[tblDog_Classes_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDog_Classes_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDog_Classes_Audit](
	[Dog_Class_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_Class_ID] [uniqueidentifier] NOT NULL,
	[Entrant_ID] [uniqueidentifier] NULL,
	[Dog_ID] [uniqueidentifier] NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NULL,
	[Handler_ID] [uniqueidentifier] NULL,
	[Ring_No] [smallint] NULL,
	[Running_Order] [smallint] NULL,
	[Special_Request] [text] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblDog_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Class_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblEntrants_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEntrants_Audit](
	[Entrant_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Entrant_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Person_ID] [uniqueidentifier] NULL,
	[Catalogue] [bit] NULL,
	[Overnight_Camping] [bit] NULL,
	[Overpayment] [money] NULL,
	[Underpayment] [money] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Help_Details] [varchar](max) NULL,
	[Withold_Address] [bit] NULL,
	[Send_Running_Order] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblEntrants_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Entrant_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDogs_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDogs_Audit](
	[Dog_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dog_KC_Name] [varchar](255) NULL,
	[Dog_Pet_Name] [varchar](128) NULL,
	[Dog_Breed_ID] [int] NULL,
	[Dog_Gender_ID] [int] NULL,
	[Owner_ID] [uniqueidentifier] NULL,
	[Breeder_ID] [uniqueidentifier] NULL,
	[Reg_No] [varchar](50) NULL,
	[Date_Of_Birth] [date] NULL,
	[Year_Of_Birth] [smallint] NULL,
	[Merit_Points] [smallint] NULL,
	[NLWU] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblDogs_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClubs_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblClubs_Audit](
	[Club_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Club_Long_Name] [varchar](255) NULL,
	[Club_Short_Name] [varchar](128) NULL,
	[Club_Contact] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [PK_tblClubs_Audit] PRIMARY KEY CLUSTERED 
(
	[Club_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblAddresses_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAddresses_Audit](
	[Address_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Address_1] [varchar](255) NULL,
	[Address_2] [varchar](255) NULL,
	[Address_Town] [varchar](128) NULL,
	[Address_City] [varchar](128) NULL,
	[Address_County] [varchar](128) NULL,
	[Address_Postcode] [varchar](10) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblAddresses_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Address_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[fnSplitter]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnSplitter]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE Function [dbo].[fnSplitter] (@IDs Varchar(1000) )  
Returns @Tbl_IDs Table  (ID Int)  As  

Begin 
 -- Append comma
 Set @IDs =  @IDs + '','' 
 -- Indexes to keep the position of searching
 Declare @Pos1 Int
 Declare @pos2 Int
 
 -- Start from first character 
 Set @Pos1=1
 Set @Pos2=1

 While @Pos1<Len(@IDs)
 Begin
  Set @Pos1 = CharIndex('','',@IDs,@Pos1)
  Insert @Tbl_IDs Select  Cast(Substring(@IDs,@Pos2,@Pos1-@Pos2) As Int)
  -- Go to next non comma character
  Set @Pos2=@Pos1+1
  -- Search from the next charcater
  Set @Pos1 = @Pos1+1
 End 
 Return
End

' 
END
GO
/****** Object:  Table [dbo].[tblShow_Final_Classes_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Final_Classes_Audit](
	[Show_Final_Class_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Judge_ID] [uniqueidentifier] NULL,
	[Stay_Time] [time](7) NULL,
	[Lunch_Time] [time](7) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Final_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Final_Class_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblShow_Helpers_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Helpers_Audit](
	[Show_Helper_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_Helper_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Show_Role_ID] [int] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Helpers_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Helper_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblShows_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShows_Audit](
	[Show_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Show_Year_ID] [int] NOT NULL,
	[Show_Type_ID] [int] NULL,
	[Venue_ID] [uniqueidentifier] NULL,
	[Show_Opens] [datetime] NULL,
	[Judging_Commences] [datetime] NULL,
	[Show_Name] [varchar](255) NULL,
	[Closing_Date] [date] NULL,
	[Entries_Complete] [bit] NULL,
	[Judges_Allocated] [bit] NULL,
	[Split_Classes] [bit] NULL,
	[Running_Orders_Allocated] [bit] NULL,
	[Ring_Numbers_Allocated] [bit] NULL,
	[Linked_Show] [bit] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShows_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblPeople_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPeople_Audit](
	[Person_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Person_Surname] [varchar](50) NULL,
	[Person_Forename] [varchar](50) NULL,
	[Address_ID] [uniqueidentifier] NULL,
	[Person_Mobile] [varchar](20) NULL,
	[Person_Landline] [varchar](20) NULL,
	[Person_Email] [varchar](255) NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblPeople_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Person_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGuarantors_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuarantors_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGuarantors_Audit](
	[Guarantor_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Guarantor_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NULL,
	[Chairman_Person_ID] [uniqueidentifier] NULL,
	[Secretary_Person_ID] [uniqueidentifier] NULL,
	[Treasurer_Person_ID] [uniqueidentifier] NULL,
	[Committee1_Person_ID] [uniqueidentifier] NULL,
	[Committee2_Person_ID] [uniqueidentifier] NULL,
	[Committee3_Person_ID] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblGuarantors_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Guarantor_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblShow_Entry_Classes_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Entry_Classes_Audit](
	[Show_Entry_Class_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL,
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_ID] [int] NOT NULL,
	[Class_No] [smallint] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblShow_Entry_Classes_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Entry_Class_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblVenues_Audit]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVenues_Audit](
	[Venue_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Venue_ID] [uniqueidentifier] NOT NULL,
	[Venue_Name] [varchar](255) NOT NULL,
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Venue_Contact] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [tblVenues_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Venue_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 05/09/2013 14:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lkpShow_Years]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpShow_Years](
	[Show_Year_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Year] [smallint] NOT NULL,
 CONSTRAINT [lkpShow_Years_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Year_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lkpShow_Types]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpShow_Types](
	[Show_Type_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Type_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpShow_Types_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Type_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpShow_Roles]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpShow_Roles](
	[Show_Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Show_Role_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpShow_Roles_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Role_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpDog_Gender]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpDog_Gender](
	[Dog_Gender_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Gender] [varchar](200) NOT NULL,
 CONSTRAINT [lkpDog_Gender_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Gender_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpDog_Breeds]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpDog_Breeds](
	[Dog_Breed_ID] [int] IDENTITY(1,1) NOT NULL,
	[Dog_Breed_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpDog_Breeds_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Breed_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lkpClass_Names]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lkpClass_Names](
	[Class_Name_ID] [int] IDENTITY(1,1) NOT NULL,
	[Class_Name_Description] [varchar](255) NOT NULL,
 CONSTRAINT [lkpClass_Names_PK] PRIMARY KEY CLUSTERED 
(
	[Class_Name_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lnkDog_Dams_Audit]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Dams_Audit](
	[Dog_Dam_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_Dam_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dam_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkDog_Dams_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Dam_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkLinked_Shows_Audit]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkLinked_Shows_Audit](
	[Linked_Show_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Linked_Show_ID] [uniqueidentifier] NOT NULL,
	[Parent_Show_ID] [uniqueidentifier] NOT NULL,
	[Child_Show_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkLinked_Shows_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Linked_Show_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkDog_Sires_Audit]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Sires_Audit](
	[Dog_Sire_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_Sire_ID] [uniqueidentifier] NOT NULL,
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Sire_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkDog_Sires_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Sire_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkUser_Person_Audit]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkUser_Person_Audit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkUser_Person_Audit](
	[User_Person_Audit_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[User_Person_ID] [uniqueidentifier] NOT NULL,
	[User_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Modified_Date] [datetime] NULL,
 CONSTRAINT [lnkUser_Person_Audit_PK] PRIMARY KEY CLUSTERED 
(
	[User_Person_Audit_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 05/09/2013 14:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_Events]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 05/09/2013 14:45:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_SchemaVersions]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL DEFAULT (NULL),
	[IsAnonymous] [bit] NOT NULL DEFAULT ((0)),
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetClass_NamesLikeClass_Name_Description]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClass_NamesLikeClass_Name_Description]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetClass_NamesLikeClass_Name_Description]
(
	@Class_Name_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Class_Name_ID, Class_Name_Description FROM dbo.lkpClass_Names
WHERE Class_Name_Description LIKE @Class_Name_Description + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetClass_NameByClass_Name_ID]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClass_NameByClass_Name_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetClass_NameByClass_Name_ID]
(
	@Class_Name_ID int
)
AS
	SET NOCOUNT ON;
SELECT Class_Name_ID, Class_Name_Description FROM dbo.lkpClass_Names
WHERE Class_Name_ID = @Class_Name_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_YearsByShow_Year_ID]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_YearsByShow_Year_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_YearsByShow_Year_ID]
(
	@Show_Year_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_Year_ID, Show_Year FROM dbo.lkpShow_Years
WHERE Show_Year_ID = @Show_Year_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_YearByShow_Year]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_YearByShow_Year]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_YearByShow_Year]
(
	@Show_Year smallint
)
AS
	SET NOCOUNT ON;
SELECT Show_Year_ID, Show_Year FROM dbo.lkpShow_Years
WHERE Show_Year = @Show_Year' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_TypesLikeShow_Type_Description]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_TypesLikeShow_Type_Description]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_TypesLikeShow_Type_Description]
(
	@Show_Type_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Show_Type_ID, Show_Type_Description FROM dbo.lkpShow_Types
WHERE Show_Type_Description LIKE @Show_Type_Description + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_TypesByShow_Type_ID]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_TypesByShow_Type_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_TypesByShow_Type_ID]
(
	@Show_Type_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_Type_ID, Show_Type_Description FROM dbo.lkpShow_Types
WHERE Show_Type_ID = @Show_Type_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_RolesLikeShow_Role_Description]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_RolesLikeShow_Role_Description]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_RolesLikeShow_Role_Description]
(
	@Show_Role_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Show_Role_ID, Show_Role_Description FROM dbo.lkpShow_Roles
WHERE Show_Role_Description LIKE @Show_Role_Description + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_RoleByShow_Role_ID]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_RoleByShow_Role_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_RoleByShow_Role_ID]
(
	@Show_Role_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_Role_ID, Show_Role_Description FROM dbo.lkpShow_Roles
WHERE Show_Role_ID = @Show_Role_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_GenderLikeDog_Gender]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_GenderLikeDog_Gender]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_GenderLikeDog_Gender]
(
	@Dog_Gender varchar(5)
)
AS
	SET NOCOUNT ON;
SELECT Dog_Gender_ID, Dog_Gender FROM dbo.lkpDog_Gender
WHERE Dog_Gender LIKE @Dog_Gender + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_GenderByDog_Gender_ID]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_GenderByDog_Gender_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_GenderByDog_Gender_ID]
(
	@Dog_Gender_ID int
)
AS
	SET NOCOUNT ON;
SELECT Dog_Gender_ID, Dog_Gender FROM dbo.lkpDog_Gender
WHERE Dog_Gender_ID = @Dog_Gender_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_Gender]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_Gender]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_Gender]

AS
	SET NOCOUNT ON;
SELECT -1 as Dog_Gender_ID, ''Please Select...'' as Dog_Gender
UNION	
SELECT Dog_Gender_ID, Dog_Gender FROM dbo.lkpDog_Gender' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_BreedsLikeDog_Breed_Description]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_BreedsLikeDog_Breed_Description]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_BreedsLikeDog_Breed_Description]
(
	@Dog_Breed_Description varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Dog_Breed_ID, Dog_Breed_Description FROM dbo.lkpDog_Breeds
WHERE Dog_Breed_Description LIKE @Dog_Breed_Description + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_Breeds]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_Breeds]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_Breeds]

AS
	SET NOCOUNT ON;
SELECT -1 as Dog_Breed_ID, ''Please Select...'' as Dog_Breed_Description
UNION	
SELECT Dog_Breed_ID, Dog_Breed_Description FROM dbo.lkpDog_Breeds' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_BreedByDog_Breed_ID]    Script Date: 05/09/2013 14:45:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_BreedByDog_Breed_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_BreedByDog_Breed_ID]
(
	@Dog_Breed_ID int
)
AS
	SET NOCOUNT ON;
SELECT Dog_Breed_ID, Dog_Breed_Description FROM dbo.lkpDog_Breeds
WHERE Dog_Breed_ID = @Dog_Breed_ID' 
END
GO
/****** Object:  Table [dbo].[tblAddresses]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblAddresses](
	[Address_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Address_1] [varchar](255) NULL,
	[Address_2] [varchar](255) NULL,
	[Address_Town] [varchar](128) NULL,
	[Address_City] [varchar](128) NULL,
	[Address_County] [varchar](128) NULL,
	[Address_Postcode] [varchar](10) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblAddresses_PK] PRIMARY KEY CLUSTERED 
(
	[Address_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Object:  Table [dbo].[tblShow_Entry_Classes]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Entry_Classes](
	[Show_Entry_Class_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Class_Name_ID] [int] NOT NULL,
	[Class_No] [smallint] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Entry_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Entry_Class_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL DEFAULT ((0)),
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 05/09/2013 14:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_Town]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_Town]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressesLikeAddress_Town]
(
	@Address_Town varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_Town LIKE @Address_Town + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_Postcode]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_Postcode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressesLikeAddress_Postcode]
(
	@Address_Postcode varchar(10)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_Postcode LIKE @Address_Postcode + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_County]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_County]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressesLikeAddress_County]
(
	@Address_County varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_County LIKE @Address_County + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_City]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_City]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressesLikeAddress_City]
(
	@Address_City varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_City LIKE @Address_City + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_2]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressesLikeAddress_2]
(
	@Address_2 varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_2 LIKE @Address_2 + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressesLikeAddress_1]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressesLikeAddress_1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressesLikeAddress_1]
(
	@Address_1 varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_1 LIKE @Address_1 + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetAddressByAddress_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetAddressByAddress_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetAddressByAddress_ID]
(
	@Address_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Address_ID, Address_1, Address_2, Address_Town, Address_City, Address_County, Address_Postcode, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblAddresses
WHERE Deleted_By is null
AND Address_ID = @Address_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  Trigger [Addresses_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Addresses_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================


CREATE TRIGGER [dbo].[Addresses_After_Update] 
   ON  [dbo].[tblAddresses] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO tblAddresses_Audit (Address_ID, Address_1, Address_2, Address_Town, 
		Address_City, Address_County, Address_Postcode, Modified_Date)
	SELECT [Address_ID], [Address_1], [Address_2], [Address_Town], [Address_City],
		[Address_County], [Address_Postcode], GETDATE()
		FROM deleted
END
'
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  Table [dbo].[tblPeople]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPeople](
	[Person_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Person_Surname] [varchar](50) NULL,
	[Person_Forename] [varchar](50) NULL,
	[Address_ID] [uniqueidentifier] NULL,
	[Person_Mobile] [varchar](20) NULL,
	[Person_Landline] [varchar](20) NULL,
	[Person_Email] [varchar](255) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblPeople_PK] PRIMARY KEY CLUSTERED 
(
	[Person_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Entry_Classes]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Entry_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShow_Entry_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Class_Name_ID int = null,
	@Class_No smallint = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Entry_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes]
			   SET [Show_ID] = @Show_ID
				  ,[Class_Name_ID] = @Class_Name_ID
				  ,[Class_No] = @Class_No
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Entry_Class_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  Trigger [Show_Entry_Classes_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Show_Entry_Classes_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Show_Entry_Classes_After_Update]
   ON  [dbo].[tblShow_Entry_Classes] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes_Audit]
           ([Show_Entry_Class_ID]
           ,[Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,[Modified_Date])
     SELECT [Show_Entry_Class_ID]
           ,[Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Entry_ClassesByShow_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Entry_ClassesByShow_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_Entry_ClassesByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT 
	Show_Entry_Class_ID, 
	Show_ID, 
	sec.Class_Name_ID, 
	Class_Name_Description,
	Class_No, 
	Created_Date, 
	Created_By, 
	Modified_Date, 
	Modified_By, 
	Deleted_Date, 
	Deleted_By 
FROM 
	dbo.tblShow_Entry_Classes sec
INNER JOIN
	dbo.lkpClass_Names cn
ON sec.Class_Name_ID = cn.Class_Name_ID
WHERE Deleted_By IS NULL 
AND Show_ID = @Show_ID
ORDER BY Class_No' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Entry_ClassByShow_Entry_Class_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Entry_ClassByShow_Entry_Class_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_Entry_ClassByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Entry_Class_ID, Show_ID, Class_Name_ID, Class_No, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShow_Entry_Classes
WHERE Show_Entry_Class_ID = @Show_Entry_Class_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblAddresses]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblAddresses]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblAddresses] 
	-- Add the parameters for the stored procedure here
	@Address_1 varchar(255) = null,
	@Address_2 varchar(255) = null,
	@Address_Town varchar(128) = null,
	@Address_City varchar(128) = null,
	@Address_County varchar(128) = null,
	@Address_Postcode varchar(10) = null,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblAddresses]
           ([Address_1]
           ,[Address_2]
           ,[Address_Town]
           ,[Address_City]
           ,[Address_County]
           ,[Address_Postcode]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
           OUTPUT inserted.Address_ID
     VALUES
           (@Address_1, @Address_2, @Address_Town, @Address_City,
           @Address_County, @Address_Postcode, GETDATE(), @UserId, null, null, null, null);
           
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Entry_Classes]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Entry_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShow_Entry_Classes] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Class_Name_ID int = null,
	@Class_No smallint = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Entry_Classes]
           ([Show_ID]
           ,[Class_Name_ID]
           ,[Class_No]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_Entry_Class_ID
     VALUES
           (@Show_ID
           ,@Class_Name_ID
           ,@Class_No
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblAddresses]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblAddresses]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblAddresses] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Address_1 varchar(255) = null,
	@Address_2 varchar(255) = null,
	@Address_Town varchar(128) = null,
	@Address_City varchar(128) = null,
	@Address_County varchar(128) = null,
	@Address_Postcode varchar(10) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblAddresses]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Address_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblAddresses]
			   SET [Address_1] = @Address_1
			  ,[Address_2] = @Address_2
			  ,[Address_Town] = @Address_Town
			  ,[Address_City] = @Address_City
			  ,[Address_County] = @Address_County
			  ,[Address_Postcode] = @Address_Postcode
			  ,[Modified_Date] = GETDATE()
			  ,[Modified_By] = @UserId
			 WHERE Address_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  Table [dbo].[tblDogs]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDogs](
	[Dog_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_KC_Name] [varchar](255) NULL,
	[Dog_Pet_Name] [varchar](128) NULL,
	[Dog_Breed_ID] [int] NULL,
	[Dog_Gender_ID] [int] NULL,
	[Owner_ID] [uniqueidentifier] NULL,
	[Breeder_ID] [uniqueidentifier] NULL,
	[Reg_No] [varchar](50) NULL,
	[Date_Of_Birth] [date] NULL,
	[Year_Of_Birth] [smallint] NULL,
	[Merit_Points] [smallint] NULL,
	[NLWU] [bit] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblDogs_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblClubs]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblClubs](
	[Club_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Club_Long_Name] [varchar](255) NULL,
	[Club_Short_Name] [varchar](128) NULL,
	[Club_Contact] [uniqueidentifier] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblClubs_PK] PRIMARY KEY CLUSTERED 
(
	[Club_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblPeople]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblPeople]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblPeople] 
	-- Add the parameters for the stored procedure here
	@Person_Surname varchar(50) = null,
	@Person_Forename varchar(50) = null,
	@Address_ID uniqueidentifier = null,
	@Person_Mobile varchar(20) = null,
	@Person_Landline varchar(20) = null,
	@Person_Email varchar(255) = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblPeople]
           ([Person_Surname]
           ,[Person_Forename]
           ,[Address_ID]
           ,[Person_Mobile]
           ,[Person_Landline]
           ,[Person_Email]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
           OUTPUT inserted.Person_ID
     VALUES
           (@Person_Surname, @Person_Forename, @Address_ID, @Person_Mobile, @Person_Landline,
           @Person_Email, GETDATE(), @UserId, null, null, null, null);
	
	
END
' 
END
GO
/****** Object:  Trigger [People_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[People_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[People_After_Update] 
   ON  [dbo].[tblPeople] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblPeople_Audit]
           ([Person_ID]
           ,[Person_Surname]
           ,[Person_Forename]
           ,[Address_ID]
           ,[Person_Mobile]
           ,[Person_Landline]
           ,[Person_Email]
           ,[Modified_Date])
     SELECT [Person_ID]
           ,[Person_Surname]
           ,[Person_Forename]
           ,[Address_ID]
           ,[Person_Mobile]
           ,[Person_Landline]
           ,[Person_Email]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  StoredProcedure [dbo].[spGetPersonByPerson_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPersonByPerson_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPersonByPerson_ID]
(
	@Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Surname, Person_Forename, Address_ID, Person_Mobile, Person_Landline, Person_Email, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblPeople
WHERE Person_ID = @Person_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetPeopleLikePerson_Forename]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPeopleLikePerson_Forename]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPeopleLikePerson_Forename]
(
	@Person_Forename varchar(50)
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Surname, Person_Forename, Address_ID, Person_Mobile, Person_Landline, Person_Email, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblPeople
WHERE Person_Forename LIKE @Person_Forename + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetPeopleByPerson_Surname]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPeopleByPerson_Surname]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPeopleByPerson_Surname]
(
	@Person_Surname varchar(50)
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Surname, Person_Forename, Address_ID, Person_Mobile, Person_Landline, Person_Email, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblPeople
WHERE Person_Surname LIKE @Person_Surname + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetPeopleByAddress_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetPeopleByAddress_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetPeopleByAddress_ID]
(
	@Address_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Person_ID, Person_Surname, Person_Forename, Address_ID, Person_Mobile, Person_Landline, Person_Email, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblPeople
WHERE Address_ID = @Address_ID' 
END
GO
/****** Object:  Table [dbo].[tblVenues]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblVenues](
	[Venue_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Venue_Name] [varchar](255) NOT NULL,
	[Address_ID] [uniqueidentifier] NOT NULL,
	[Venue_Contact] [uniqueidentifier] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblVenues_PK] PRIMARY KEY CLUSTERED 
(
	[Venue_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblPeople]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblPeople]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblPeople] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Person_Surname varchar(50) = null,
	@Person_Forename varchar(50) = null,
	@Address_ID uniqueidentifier = null,
	@Person_Mobile varchar(20) = null,
	@Person_Landline varchar(20) = null,
	@Person_Email varchar(255) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblPeople]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Person_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblPeople]
			   SET [Person_Surname] = @Person_Surname
				  ,[Person_Forename] = @Person_Forename
				  ,[Address_ID] = @Address_ID
				  ,[Person_Mobile] = @Person_Mobile
				  ,[Person_Landline] = @Person_Landline
				  ,[Person_Email] = @Person_Email
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Person_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  Table [dbo].[lnkUser_Person]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkUser_Person](
	[User_Person_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[User_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkUser_Person_PK] PRIMARY KEY CLUSTERED 
(
	[User_Person_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkDog_Sires]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Sires](
	[Dog_Sire_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Sire_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkDog_Sires_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Sire_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[lnkDog_Dams]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkDog_Dams](
	[Dog_Dam_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Dog_ID] [uniqueidentifier] NOT NULL,
	[Dam_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkDog_Dams_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Dam_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Trigger [Clubs_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Clubs_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Clubs_After_Update] 
   ON  [dbo].[tblClubs] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblClubs_Audit]
           ([Club_ID]
           ,[Club_Long_Name]
           ,[Club_Short_Name]
           ,[Club_Contact]
           ,[Modified_Date])
     SELECT [Club_ID], [Club_Long_Name], [Club_Short_Name], [Club_Contact], GETDATE()
		FROM deleted

END
'
GO
/****** Object:  Trigger [Dogs_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dogs_After_Update]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[Dogs_After_Update] 
   ON  [dbo].[tblDogs] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDogs_Audit]
           ([Dog_ID]
           ,[Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Owner_ID]
           ,[Breeder_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
           ,[Modified_Date])
     SELECT [Dog_ID]
           ,[Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Owner_ID]
           ,[Breeder_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
           ,GETDATE()
      FROM deleted
      
END
'
GO
/****** Object:  Trigger [Venues_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Venues_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Venues_After_Update]
   ON  [dbo].[tblVenues]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblVenues_Audit]
           ([Venue_ID]
           ,[Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,[Modified_Date])
     SELECT [Venue_ID]
           ,[Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [User_Person_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[User_Person_After_Update]'))
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[User_Person_After_Update] 
   ON  [dbo].[lnkUser_Person] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkUser_Person_Audit]
           ([User_Person_ID]
           ,[User_ID]
           ,[Person_ID]
           ,[Modified_Date])
     SELECT [User_Person_ID]
           ,[User_ID]
           ,[Person_ID]
           ,GETDATE()
     FROM deleted


END

'
GO
/****** Object:  Table [dbo].[tblShows]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShows]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShows](
	[Show_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__tblShows__Show_I__719CDDE7]  DEFAULT (newid()),
	[Club_ID] [uniqueidentifier] NOT NULL,
	[Show_Year_ID] [int] NOT NULL,
	[Show_Type_ID] [int] NULL,
	[Venue_ID] [uniqueidentifier] NULL,
	[Show_Opens] [datetime] NULL,
	[Judging_Commences] [datetime] NULL,
	[Show_Name] [varchar](255) NULL,
	[Closing_Date] [datetime] NULL,
	[Entries_Complete] [bit] NULL,
	[Judges_Allocated] [bit] NULL,
	[Split_Classes] [bit] NULL,
	[Running_Orders_Allocated] [bit] NULL,
	[Ring_Numbers_Allocated] [bit] NULL,
	[Linked_Show] [bit] NULL,
	[MaxClassesPerDog] [smallint] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShows_PK] PRIMARY KEY CLUSTERED 
(
	[Show_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsWhereDog_Breed_IDInList]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsWhereDog_Breed_IDInList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDogsWhereDog_Breed_IDInList]
(
	@Dog_Breed_IDs Varchar(1000)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Owner_ID, Breeder_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Dog_Breed_ID IN (Select ID From fnSplitter(@Dog_Breed_IDs))' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsLikeDog_Pet_Name]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsLikeDog_Pet_Name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDogsLikeDog_Pet_Name]
(
	@Dog_Pet_Name varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Owner_ID, Breeder_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Dog_Pet_Name LIKE @Dog_Pet_Name + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsLikeDog_KC_Name]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsLikeDog_KC_Name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDogsLikeDog_KC_Name]
(
	@Dog_KC_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Owner_ID, Breeder_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Dog_KC_Name LIKE @Dog_KC_Name + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsByOwner_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsByOwner_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDogsByOwner_ID]
(
	@Owner_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Owner_ID, Breeder_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Deleted_By is null
AND NLWU is null
AND Owner_ID = @Owner_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDogsByDog_Breed_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogsByDog_Breed_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDogsByDog_Breed_ID]
(
	@Dog_Breed_ID int
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Owner_ID, Breeder_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Dog_Breed_ID = @Dog_Breed_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDogByDog_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDogByDog_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDogByDog_ID]
(
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_ID, Dog_KC_Name, Dog_Pet_Name, Dog_Breed_ID, Dog_Gender_ID, Owner_ID, Breeder_ID, Reg_No, Date_Of_Birth, Year_Of_Birth, Merit_Points, NLWU, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDogs
WHERE Dog_ID = @Dog_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetClubsLikeClub_Long_Name]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubsLikeClub_Long_Name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetClubsLikeClub_Long_Name]
(
	@Club_Long_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblClubs
WHERE Club_Long_Name LIKE @Club_Long_Name + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetClubsByClub_Short_Name]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubsByClub_Short_Name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetClubsByClub_Short_Name]
(
	@Club_Short_Name varchar(128)
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblClubs
WHERE Club_Short_Name LIKE @Club_Short_Name + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetClubsByClub_Contact]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubsByClub_Contact]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetClubsByClub_Contact]
(
	@Club_Contact uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblClubs
WHERE Club_Contact = @Club_Contact' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetClubByClub_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetClubByClub_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetClubByClub_ID]
(
	@Club_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Club_ID, Club_Long_Name, Club_Short_Name, Club_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblClubs
WHERE Club_ID = @Club_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetVenuesLikeVenue_Name]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetVenuesLikeVenue_Name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetVenuesLikeVenue_Name]
(
	@Venue_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblVenues
WHERE Venue_Name LIKE @Venue_Name + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetVenueByVenue_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetVenueByVenue_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetVenueByVenue_ID]
(
	@Venue_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblVenues
WHERE Venue_ID = @Venue_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetVenueByAddress_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetVenueByAddress_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetVenueByAddress_ID]
(
	@Address_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Venue_ID, Venue_Name, Address_ID, Venue_Contact, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblVenues
WHERE Address_ID = @Address_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUser_PersonByUser_Person_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetUser_PersonByUser_Person_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetUser_PersonByUser_Person_ID]
(
	@User_Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkUser_Person
WHERE Deleted_By is null
AND User_Person_ID = @User_Person_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUser_PersonByUser_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetUser_PersonByUser_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetUser_PersonByUser_ID]
(
	@User_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkUser_Person
WHERE Deleted_By is null
AND User_ID = @User_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetUser_PersonByPerson_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetUser_PersonByPerson_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetUser_PersonByPerson_ID]
(
	@Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT User_Person_ID, User_ID, Person_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkUser_Person
WHERE Deleted_By is null
AND Person_ID = @Person_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblVenues]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblVenues]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblVenues] 
	-- Add the parameters for the stored procedure here
	@Venue_Name varchar(255) = null,
	@Address_ID uniqueidentifier = null,
	@Venue_Contact uniqueidentifier = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblVenues]
           ([Venue_Name]
           ,[Address_ID]
           ,[Venue_Contact]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Venue_ID
     VALUES
           (@Venue_Name
           ,@Address_ID
           ,@Venue_Contact
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblDogs]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblDogs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblDogs] 
	-- Add the parameters for the stored procedure here
	@Dog_KC_Name varchar(255) = null,
	@Dog_Pet_Name varchar(128) = null,
	@Dog_Breed_ID int = null,
	@Dog_Gender_ID int = null,
	@Owner_ID uniqueidentifier = null,
	@Breeder_ID uniqueidentifier = null,
	@Reg_No varchar(50) = null,
	@Date_of_Birth date = null,
	@Year_of_Birth smallint = null,
	@Merit_Points smallint = null,
	@NLWU bit = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDogs]
           ([Dog_KC_Name]
           ,[Dog_Pet_Name]
           ,[Dog_Breed_ID]
           ,[Dog_Gender_ID]
           ,[Owner_ID]
           ,[Breeder_ID]
           ,[Reg_No]
           ,[Date_Of_Birth]
           ,[Year_Of_Birth]
           ,[Merit_Points]
           ,[NLWU]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_ID
     VALUES
           (@Dog_KC_Name
           ,@Dog_Pet_Name
           ,@Dog_Breed_ID
           ,@Dog_Gender_ID
           ,@Owner_ID
           ,@Breeder_ID
           ,@Reg_No
           ,@Date_of_Birth
           ,@Year_of_Birth
           ,@Merit_Points
           ,@NLWU
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkUser_Person]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkUser_Person]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spInsert_lnkUser_Person]
(
	@User_ID uniqueidentifier,
	@Person_ID uniqueidentifier,
	@Created_By_ID uniqueidentifier
)
AS
	SET NOCOUNT OFF;
INSERT INTO [dbo].[lnkUser_Person] ([User_ID], [Person_ID], [Created_Date], [Created_By])
OUTPUT inserted.User_Person_ID 
VALUES (@User_ID, @Person_ID, GETDATE(), @Created_By_ID)' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblClubs]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblClubs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblClubs] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Club_Long_Name varchar(255) = null,
	@Club_Short_Name varchar(128) = null,
	@Club_Contact uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblClubs]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Club_ID = @Original_ID
		END
	ELSE
		BEGIN
		UPDATE [sussexsoftwaresolutions].[dbo].[tblClubs]
		   SET [Club_Long_Name] = @Club_Long_Name
			  ,[Club_Short_Name] = @Club_Short_Name
			  ,[Club_Contact] = @Club_Contact
			  ,[Modified_Date] = GETDATE()
			  ,[Modified_By] = @UserId
		 WHERE Club_ID = @Original_ID
	END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblClubs]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblClubs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblClubs] 
	-- Add the parameters for the stored procedure here
	@Club_Long_Name varchar(255) = null,
	@Club_Short_Name varchar(128) = null,
	@Club_Contact uniqueidentifier = null,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblClubs]
           ([Club_Long_Name]
           ,[Club_Short_Name]
           ,[Club_Contact]
           ,[Created_Date]
           ,[Created_By]
           ,[Modified_Date]
           ,[Modified_By]
           ,[Deleted_Date]
           ,[Deleted_By])
           OUTPUT inserted.Club_ID
     VALUES
           (@Club_Long_Name, @Club_Short_Name, @Club_Contact, GETDATE(), @UserId, null, null, null, null);
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblDogs]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblDogs]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblDogs] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_KC_Name varchar(255) = null,
	@Dog_Pet_Name varchar(128) = null,
	@Dog_Breed_ID int = null,
	@Dog_Gender_ID int = null,
	@Owner_ID uniqueidentifier = null,
	@Breeder_ID uniqueidentifier = null,
	@Reg_No varchar(50) = null,
	@Date_Of_Birth date = null,
	@Year_Of_Birth smallint = null,
	@Merit_Points smallint = null,
	@NLWU bit = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDogs]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDogs]
			   SET [Dog_KC_Name] = @Dog_KC_Name
				  ,[Dog_Pet_Name] = @Dog_Pet_Name
				  ,[Dog_Breed_ID] = @Dog_Breed_ID
				  ,[Dog_Gender_ID] = @Dog_Gender_ID
				  ,[Owner_ID] = @Owner_ID
				  ,[Breeder_ID] = @Breeder_ID
				  ,[Reg_No] = @Reg_No
				  ,[Date_Of_Birth] = @Date_Of_Birth
				  ,[Year_Of_Birth] = @Year_Of_Birth
				  ,[Merit_Points] = @Merit_Points
				  ,[NLWU] = @NLWU
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkUser_Person]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkUser_Person]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkUser_Person] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@User_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkUser_Person]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE User_Person_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkUser_Person]
			   SET [User_ID] = @User_ID
				  ,[Person_ID] = @Person_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE User_Person_ID = @Original_ID
		END	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkDog_Sires]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkDog_Sires]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkDog_Sires] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_ID uniqueidentifier = null,
	@Sire_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Sires]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Sire_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Sires]
			   SET [Dog_ID] = @Dog_ID
				  ,[Sire_ID] = @Sire_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Sire_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkDog_Dams]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkDog_Dams]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkDog_Dams] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Dog_ID uniqueidentifier = null,
	@Dam_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Dams]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Dam_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkDog_Dams]
			   SET [Dog_ID] = @Dog_ID
				  ,[Dam_ID] = @Dam_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Dam_ID = @Original_ID
		END	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblVenues]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblVenues]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblVenues] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Venue_Name varchar(255) = null,
	@Address_ID uniqueidentifier = null,
	@Venue_Contact uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Venue_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblVenues]
			   SET [Venue_Name] = @Venue_Name
				  ,[Address_ID] = @Address_ID
				  ,[Venue_Contact] = @Venue_Contact
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Venue_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShows]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShows]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShows] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Club_ID uniqueidentifier = null,
	@Show_Year_ID int = null,
	@Show_Type_ID int = null,
	@Venue_ID uniqueidentifier = null,
	@Show_Opens datetime = null,
	@Judging_Commences datetime = null,
	@Show_Name varchar(255) = null,
	@Closing_Date datetime = null,
	@Entries_Complete bit = null,
	@Judges_Allocated bit = null,
	@Split_Classes bit = null,
	@Running_Orders_Allocated bit = null,
	@Ring_Numbers_Allocated bit = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShows]
			   SET [Club_ID] = @Club_ID
				  ,[Show_Year_ID] = @Show_Year_ID
				  ,[Show_Type_ID] = @Show_Type_ID
				  ,[Venue_ID] = @Venue_ID
				  ,[Show_Opens] = @Show_Opens
				  ,[Judging_Commences] = @Judging_Commences
				  ,[Show_Name] = @Show_Name
				  ,[Closing_Date] = @Closing_Date
				  ,[Entries_Complete] = @Entries_Complete
				  ,[Judges_Allocated] = @Judges_Allocated
				  ,[Split_Classes] = @Split_Classes
				  ,[Running_Orders_Allocated] = @Running_Orders_Allocated
				  ,[Ring_Numbers_Allocated] = @Ring_Numbers_Allocated
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  Table [dbo].[tblEntrants]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEntrants](
	[Entrant_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NULL,
	[Person_ID] [uniqueidentifier] NULL,
	[Catalogue] [bit] NULL,
	[Overnight_Camping] [bit] NULL,
	[Overpayment] [money] NULL,
	[Underpayment] [money] NULL,
	[Offer_Of_Help] [bit] NULL,
	[Help_Details] [varchar](max) NULL,
	[Withold_Address] [bit] NULL,
	[Send_Running_Order] [bit] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblEntrants_PK] PRIMARY KEY CLUSTERED 
(
	[Entrant_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkDog_Sires]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkDog_Sires]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_lnkDog_Sires] 
	-- Add the parameters for the stored procedure here
	@Dog_ID uniqueidentifier = null,
	@Sire_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Sires]
           ([Dog_ID]
           ,[Sire_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_Sire_ID
     VALUES
           (@Dog_ID, @Sire_ID, GETDATE(), @UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkDog_Dams]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkDog_Dams]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_lnkDog_Dams] 
	-- Add the parameters for the stored procedure here
	@Dog_ID uniqueidentifier = null,
	@Dam_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Dams]
           ([Dog_ID]
           ,[Dam_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_Dam_ID
     VALUES
           (@Dog_ID, @Dam_ID, GETDATE(), @UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShows]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShows]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShows] 
	-- Add the parameters for the stored procedure here
	@Club_ID uniqueidentifier = null,
	@Show_Year_ID int = null,
	@Show_Type_ID int = null,
	@Venue_ID uniqueidentifier = null,
	@Show_Opens datetime = null,
	@Judging_Commences datetime = null,
	@Show_Name varchar(255) = null,
	@Closing_Date datetime = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShows]
           ([Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_ID
     VALUES
           (@Club_ID
           ,@Show_Year_ID
           ,@Show_Type_ID
           ,@Venue_ID
           ,@Show_Opens
           ,@Judging_Commences
           ,@Show_Name
           ,@Closing_Date
           ,0
           ,0
           ,0
           ,0
           ,0
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsLikeShow_Name]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsLikeShow_Name]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShowsLikeShow_Name]
(
	@Show_Name varchar(255)
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Show_Name LIKE @Show_Name + ''%''' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByVenue_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByVenue_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShowsByVenue_ID]
(
	@Venue_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Venue_ID = @Venue_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByShow_Year_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByShow_Year_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShowsByShow_Year_ID]
(
	@Show_Year_ID smallint
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Show_Year_ID = @Show_Year_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByShow_Type_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByShow_Type_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShowsByShow_Type_ID]
(
	@Show_Type_ID int
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Show_Type_ID = @Show_Type_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShowsByClub_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowsByClub_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShowsByClub_ID]
(
	@Club_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Club_ID = @Club_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShowByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShowByShow_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShowByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_ID, Club_ID, Show_Year_ID, Show_Type_ID, Venue_ID, Show_Opens, Judging_Commences, Show_Name, Closing_Date, Entries_Complete, Judges_Allocated, Split_Classes, Running_Orders_Allocated, Ring_Numbers_Allocated, Linked_Show, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShows
WHERE Show_ID = @Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_DamsByDam_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_DamsByDam_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_DamsByDam_ID]
(
	@Dam_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Dam_ID, Dog_ID, Dam_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkDog_Dams
WHERE Dam_ID = @Dam_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_DamByDog_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_DamByDog_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_DamByDog_ID]
(
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Dam_ID, Dog_ID, Dam_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkDog_Dams
WHERE Dog_ID = @Dog_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_DamByDog_Dam_ID]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_DamByDog_Dam_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_DamByDog_Dam_ID]
(
	@Dog_Dam_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Dam_ID, Dog_ID, Dam_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkDog_Dams
WHERE Dog_Dam_ID = @Dog_Dam_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_SiresBySire_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_SiresBySire_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_SiresBySire_ID]
(
	@Sire_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Sire_ID, Dog_ID, Sire_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkDog_Sires
WHERE Sire_ID = @Sire_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_SireByDog_Sire_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_SireByDog_Sire_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_SireByDog_Sire_ID]
(
	@Dog_Sire_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Sire_ID, Dog_ID, Sire_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkDog_Sires
WHERE Dog_Sire_ID = @Dog_Sire_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_SireByDog_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_SireByDog_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_SireByDog_ID]
(
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Sire_ID, Dog_ID, Sire_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkDog_Sires
WHERE Dog_ID = @Dog_ID' 
END
GO
/****** Object:  Table [dbo].[tblShow_Helpers]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Helpers](
	[Show_Helper_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Person_ID] [uniqueidentifier] NOT NULL,
	[Show_Role_ID] [int] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Helpers_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Helper_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tblShow_Final_Classes]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblShow_Final_Classes](
	[Show_Final_Class_ID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__tblShow_F__Show___73852659]  DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NOT NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_Description] [varchar](255) NOT NULL,
	[Judge_ID] [uniqueidentifier] NULL,
	[Stay_Time] [datetime] NULL,
	[Lunch_Time] [datetime] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblShow_Final_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Show_Final_Class_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblGuarantors]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGuarantors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblGuarantors](
	[Guarantor_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Show_ID] [uniqueidentifier] NULL,
	[Chairman_Person_ID] [uniqueidentifier] NULL,
	[Secretary_Person_ID] [uniqueidentifier] NULL,
	[Treasurer_Person_ID] [uniqueidentifier] NULL,
	[Committee1_Person_ID] [uniqueidentifier] NULL,
	[Committee2_Person_ID] [uniqueidentifier] NULL,
	[Committee3_Person_ID] [uniqueidentifier] NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblGuarantors_PK] PRIMARY KEY CLUSTERED 
(
	[Guarantor_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Trigger [Dog_Sires_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dog_Sires_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Dog_Sires_After_Update] 
   ON  [dbo].[lnkDog_Sires] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Sires_Audit]
           ([Dog_Sire_ID]
           ,[Dog_ID]
           ,[Sire_ID]
           ,[Modified_Date])
     SELECT [Dog_Sire_ID]
           ,[Dog_ID]
           ,[Sire_ID]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [Dog_Dams_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dog_Dams_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Dog_Dams_After_Update] 
   ON  [dbo].[lnkDog_Dams] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkDog_Dams_Audit]
           ([Dog_Dam_ID]
           ,[Dog_ID]
           ,[Dam_ID]
           ,[Modified_Date])
     SELECT [Dog_Dam_ID]
           ,[Dog_ID]
           ,[Dam_ID]
           ,GETDATE()
     FROM deleted


END
'
GO
/****** Object:  Table [dbo].[lnkLinked_Shows]    Script Date: 05/09/2013 14:45:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[lnkLinked_Shows](
	[Linked_Show_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Parent_Show_ID] [uniqueidentifier] NOT NULL,
	[Child_Show_ID] [uniqueidentifier] NOT NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [lnkLinked_Shows_PK] PRIMARY KEY CLUSTERED 
(
	[Linked_Show_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Trigger [Shows_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Shows_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Shows_After_Update] 
   ON  [dbo].[tblShows]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShows_Audit]
           ([Show_ID]
           ,[Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,[Modified_Date])
     SELECT [Show_ID]
           ,[Club_ID]
           ,[Show_Year_ID]
           ,[Show_Type_ID]
           ,[Venue_ID]
           ,[Show_Opens]
           ,[Judging_Commences]
           ,[Show_Name]
           ,[Closing_Date]
           ,[Entries_Complete]
           ,[Judges_Allocated]
           ,[Split_Classes]
           ,[Running_Orders_Allocated]
           ,[Ring_Numbers_Allocated]
           ,GETDATE()
      FROM deleted

END
'
GO
/****** Object:  Trigger [Show_Helpers_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Show_Helpers_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Show_Helpers_After_Update] 
   ON  [dbo].[tblShow_Helpers]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Helpers_Audit]
           ([Show_Helper_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,[Modified_Date])
     SELECT [Show_Helper_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [Show_Final_Classes_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Show_Final_Classes_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER  [dbo].[Show_Final_Classes_After_Update]
   ON  [dbo].[tblShow_Final_Classes]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes_Audit]
           ([Show_Final_Class_ID]
           ,[Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,[Modified_Date])
     SELECT [Show_Final_Class_ID]
           ,[Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  Trigger [Linked_Shows_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Linked_Shows_After_Update]'))
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Linked_Shows_After_Update] 
   ON  [dbo].[lnkLinked_Shows] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows_Audit]
           ([Linked_Show_ID]
           ,[Parent_Show_ID]
           ,[Child_Show_ID]
           ,[Modified_Date])
     SELECT [Linked_Show_ID]
           ,[Parent_Show_ID]
           ,[Child_Show_ID]
           ,GETDATE()
     FROM deleted


END

'
GO
/****** Object:  Trigger [Guarantors_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Guarantors_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Guarantors_After_Update] 
   ON [dbo].[tblGuarantors]
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblGuarantors_Audit]
           ([Guarantor_ID]
           ,[Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,[Modified_Date])
     SELECT [Guarantor_ID]
           ,[Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblGuarantors]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblGuarantors]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblGuarantors] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Chairman_Person_ID uniqueidentifier = null,
	@Secretary_Person_ID uniqueidentifier = null,
	@Treasurer_Person_ID uniqueidentifier = null,
	@Committee1_Person_ID uniqueidentifier = null,
	@Committee2_Person_ID uniqueidentifier = null,
	@Committee3_Person_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblGuarantors]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Guarantor_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblGuarantors]
			   SET [Show_ID] = @Show_ID
				  ,[Chairman_Person_ID] = @Chairman_Person_ID
				  ,[Secretary_Person_ID] = @Secretary_Person_ID
				  ,[Treasurer_Person_ID] = @Treasurer_Person_ID
				  ,[Committee1_Person_ID] = @Committee1_Person_ID
				  ,[Committee2_Person_ID] = @Committee2_Person_ID
				  ,[Committee3_Person_ID] = @Committee3_Person_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Guarantor_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblEntrants]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblEntrants]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblEntrants] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Catalogue bit = null,
	@Overnight_Camping bit = null,
	@Overpayment money = null,
	@Underpayment money = null,
	@Offer_Of_Help bit = null,
	@Help_Details varchar(max) = null,
	@Withold_Address bit = null,
	@Send_Running_Order bit = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblEntrants]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Entrant_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblEntrants]
			   SET [Show_ID] = @Show_ID
				  ,[Person_ID] = @Person_ID
				  ,[Catalogue] = @Catalogue
				  ,[Overnight_Camping] = @Overnight_Camping
				  ,[Overpayment] = @Overpayment
				  ,[Underpayment] = @Underpayment
				  ,[Offer_Of_Help] = @Offer_Of_Help
				  ,[Help_Details] = @Help_Details
				  ,[Withold_Address] = @Withold_Address
				  ,[Send_Running_Order] = @Send_Running_Order
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Entrant_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetLinked_ShowsByParent_Show_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLinked_ShowsByParent_Show_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetLinked_ShowsByParent_Show_ID]
(
	@Parent_Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkLinked_Shows
WHERE Parent_Show_ID = @Parent_Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetLinked_ShowByLinked_Show_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLinked_ShowByLinked_Show_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetLinked_ShowByLinked_Show_ID]
(
	@Linked_Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkLinked_Shows
WHERE Linked_Show_ID = @Linked_Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetLinked_ShowByChild_Show_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetLinked_ShowByChild_Show_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetLinked_ShowByChild_Show_ID]
(
	@Child_Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Linked_Show_ID, Parent_Show_ID, Child_Show_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.lnkLinked_Shows
WHERE Child_Show_ID = @Child_Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetGuarantorsByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetGuarantorsByShow_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetGuarantorsByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Guarantor_ID, Show_ID, Chairman_Person_ID, Secretary_Person_ID, Treasurer_Person_ID, Committee1_Person_ID, Committee2_Person_ID, Committee3_Person_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblGuarantors
WHERE Show_ID = @Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetGuarantorByGuarantor_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetGuarantorByGuarantor_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetGuarantorByGuarantor_ID]
(
	@Guarantor_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Guarantor_ID, Show_ID, Chairman_Person_ID, Secretary_Person_ID, Treasurer_Person_ID, Committee1_Person_ID, Committee2_Person_ID, Committee3_Person_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblGuarantors
WHERE Guarantor_ID = @Guarantor_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetEntrantsByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetEntrantsByShow_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetEntrantsByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Entrant_ID, Show_ID, Person_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, Withold_Address, Send_Running_Order, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblEntrants
WHERE Show_ID = @Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetEntrantsByPerson_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetEntrantsByPerson_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetEntrantsByPerson_ID]
(
	@Person_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Entrant_ID, Show_ID, Person_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, Withold_Address, Send_Running_Order, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblEntrants
WHERE Person_ID = @Person_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetEntrantByEntrant_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetEntrantByEntrant_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetEntrantByEntrant_ID]
(
	@Entrant_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Entrant_ID, Show_ID, Person_ID, Catalogue, Overnight_Camping, Overpayment, Underpayment, Offer_Of_Help, Help_Details, Withold_Address, Send_Running_Order, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblEntrants
WHERE Entrant_ID = @Entrant_ID' 
END
GO
/****** Object:  Trigger [Entrants_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Entrants_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Entrants_After_Update] 
   ON  [dbo].[tblEntrants] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblEntrants_Audit]
           ([Entrant_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,[Modified_Date])
     SELECT [Entrant_ID]
           ,[Show_ID]
           ,[Person_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,GETDATE()
      FROM deleted

END
'
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_HelpersByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_HelpersByShow_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_HelpersByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Helper_ID, Show_ID, Person_ID, Show_Role_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShow_Helpers
WHERE Show_ID = @Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_HelperByShow_Helper_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_HelperByShow_Helper_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_HelperByShow_Helper_ID]
(
	@Show_Helper_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Helper_ID, Show_ID, Person_ID, Show_Role_ID, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShow_Helpers
WHERE Show_Helper_ID = @Show_Helper_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Final_ClassesByShow_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Final_ClassesByShow_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_Final_ClassesByShow_ID]
(
	@Show_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Final_Class_ID, Show_ID, Show_Entry_Class_ID, Show_Final_Class_Description, Judge_ID, Stay_Time, Lunch_Time, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShow_Final_Classes
WHERE Show_ID = @Show_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetShow_Final_ClassByShow_Final_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetShow_Final_ClassByShow_Final_Class_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetShow_Final_ClassByShow_Final_Class_ID]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Show_Final_Class_ID, Show_ID, Show_Entry_Class_ID, Show_Final_Class_Description, Judge_ID, Stay_Time, Lunch_Time, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblShow_Final_Classes
WHERE Show_Final_Class_ID = @Show_Final_Class_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Helpers]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Helpers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShow_Helpers] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Show_Role_ID int = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Helpers]
           ([Show_ID]
           ,[Person_ID]
           ,[Show_Role_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_Helper_ID
     VALUES
           (@Show_ID
           ,@Person_ID
           ,@Show_Role_ID
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblShow_Final_Classes]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblShow_Final_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblShow_Final_Classes] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Judge_ID uniqueidentifier = null,
	@Stay_Time datetime = null,
	@Lunch_Time datetime = null,
	@UserId uniqueidentifier = null	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes]
           ([Show_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_Description]
           ,[Judge_ID]
           ,[Stay_Time]
           ,[Lunch_Time]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Show_Final_Class_ID
     VALUES
           (@Show_ID
           ,@Show_Entry_Class_ID
           ,@Show_Final_Class_Description
           ,@Judge_ID
           ,@Stay_Time
           ,@Lunch_Time
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblGuarantors]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblGuarantors]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblGuarantors]
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Chairman_Person_ID uniqueidentifier = null,
	@Secretary_Person_ID uniqueidentifier = null,
	@Treasurer_Person_ID uniqueidentifier = null,
	@Committee1_Person_ID uniqueidentifier = null,
	@Committee2_Person_ID uniqueidentifier = null,
	@Committee3_Person_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblGuarantors]
           ([Show_ID]
           ,[Chairman_Person_ID]
           ,[Secretary_Person_ID]
           ,[Treasurer_Person_ID]
           ,[Committee1_Person_ID]
           ,[Committee2_Person_ID]
           ,[Committee3_Person_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Guarantor_ID
     VALUES
           (@Show_ID
           ,@Chairman_Person_ID
           ,@Secretary_Person_ID
           ,@Treasurer_Person_ID
           ,@Committee1_Person_ID
           ,@Committee2_Person_ID
           ,@Committee3_Person_ID
           ,GETDATE()
           ,@UserId);


END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblEntrants]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblEntrants]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblEntrants] 
	-- Add the parameters for the stored procedure here
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Catalogue bit = null,
	@Overnight_Camping bit = null,
	@Overpayment money = null,
	@Underpayment money = null,
	@Offer_Of_Help bit = null,
	@Help_Details varchar(max) = null,
	@Withold_Address bit = null,
	@Send_Running_Order bit = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblEntrants]
           ([Show_ID]
           ,[Person_ID]
           ,[Catalogue]
           ,[Overnight_Camping]
           ,[Overpayment]
           ,[Underpayment]
           ,[Offer_Of_Help]
           ,[Help_Details]
           ,[Withold_Address]
           ,[Send_Running_Order]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Entrant_ID
     VALUES
           (@Show_ID
           ,@Person_ID
           ,@Catalogue
           ,@Overnight_Camping
           ,@Overpayment
           ,@Underpayment
           ,@Offer_Of_Help
           ,@Help_Details
           ,@Withold_Address
           ,@Send_Running_Order
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_lnkLinked_Shows]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_lnkLinked_Shows]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_lnkLinked_Shows] 
	-- Add the parameters for the stored procedure here
	@Parent_Show_ID uniqueidentifier = null,
	@Child_Show_ID uniqueidentifier = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows]
           ([Parent_Show_ID]
           ,[Child_Show_ID]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Linked_Show_ID
     VALUES
           (@Parent_Show_ID, @Child_Show_ID, GETDATE(), @UserId);

END

' 
END
GO
/****** Object:  Table [dbo].[tblDog_Classes]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDog_Classes](
	[Dog_Class_ID] [uniqueidentifier] NOT NULL DEFAULT (newid()),
	[Entrant_ID] [uniqueidentifier] NULL,
	[Dog_ID] [uniqueidentifier] NULL,
	[Show_Entry_Class_ID] [uniqueidentifier] NULL,
	[Show_Final_Class_ID] [uniqueidentifier] NULL,
	[Handler_ID] [uniqueidentifier] NULL,
	[Ring_No] [smallint] NULL,
	[Running_Order] [smallint] NULL,
	[Special_Request] [varchar](max) NULL,
	[Created_Date] [datetime] NULL,
	[Created_By] [uniqueidentifier] NULL,
	[Modified_Date] [datetime] NULL,
	[Modified_By] [uniqueidentifier] NULL,
	[Deleted_Date] [datetime] NULL,
	[Deleted_By] [uniqueidentifier] NULL,
 CONSTRAINT [tblDog_Classes_PK] PRIMARY KEY CLUSTERED 
(
	[Dog_Class_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Helpers]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Helpers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShow_Helpers] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Person_ID uniqueidentifier = null,
	@Show_Role_ID int = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Helpers]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Helper_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Helpers]
			   SET [Show_ID] = @Show_ID
				  ,[Person_ID] = @Person_ID
				  ,[Show_Role_ID] = @Show_Role_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Helper_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblShow_Final_Classes]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblShow_Final_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblShow_Final_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Show_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_Description varchar(255) = null,
	@Judge_ID uniqueidentifier = null,
	@Stay_Time datetime = null,
	@Lunch_Time datetime = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Show_Final_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblShow_Final_Classes]
			   SET [Show_ID] = @Show_ID
				  ,[Show_Entry_Class_ID] = @Show_Entry_Class_ID
				  ,[Show_Final_Class_Description] = @Show_Final_Class_Description
				  ,[Judge_ID] = @Judge_ID
				  ,[Stay_Time] = @Stay_Time
				  ,[Lunch_Time] = @Lunch_Time
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Show_Final_Class_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_lnkLinked_Shows]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_lnkLinked_Shows]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_lnkLinked_Shows] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Parent_Show_ID uniqueidentifier = null,
	@Child_Show_ID uniqueidentifier = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Linked_Show_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[lnkLinked_Shows]
			   SET [Parent_Show_ID] = @Parent_Show_ID
				  ,[Child_Show_ID] = @Child_Show_ID
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Linked_Show_ID = @Original_ID
		END
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdate_tblDog_Classes]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spUpdate_tblDog_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpdate_tblDog_Classes] 
	-- Add the parameters for the stored procedure here
	@Original_ID uniqueidentifier,
	@Entrant_ID uniqueidentifier = null,
	@Dog_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Show_Final_Class_ID uniqueidentifier = null,
	@Handler_ID uniqueidentifier = null,
	@Ring_No smallint = null,
	@Running_Order smallint = null,
	@Special_Request varchar(max) = null,
	@Deleted bit = 0,
	@UserId uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @Deleted = 1
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
				SET [Deleted_Date] = GETDATE()
				  ,[Deleted_By] = @UserId
			 WHERE Dog_Class_ID = @Original_ID
		END
	ELSE
		BEGIN
			UPDATE [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
			   SET [Entrant_ID] = @Entrant_ID
				  ,[Show_Entry_Class_ID] = @Show_Entry_Class_ID
				  ,[Show_Final_Class_ID] = @Show_Final_Class_ID
				  ,[Handler_ID] = @Handler_ID
				  ,[Ring_No] = @Ring_No
				  ,[Running_Order] = @Running_Order
				  ,[Special_Request] = @Special_Request
				  ,[Modified_Date] = GETDATE()
				  ,[Modified_By] = @UserId
			 WHERE Dog_Class_ID = @Original_ID
		END
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spInsert_tblDog_Classes]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spInsert_tblDog_Classes]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spInsert_tblDog_Classes] 
	-- Add the parameters for the stored procedure here
	@Entrant_ID uniqueidentifier = null,
	@Dog_ID uniqueidentifier = null,
	@Show_Entry_Class_ID uniqueidentifier = null,
	@Handler_ID uniqueidentifier = null,
	@Special_Request varchar(max) = null,
	@UserId uniqueidentifier	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDog_Classes]
           ([Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Handler_ID]
           ,[Special_Request]
           ,[Created_Date]
           ,[Created_By])
           OUTPUT inserted.Dog_Class_ID
     VALUES
           (@Entrant_ID
           ,@Dog_ID
           ,@Show_Entry_Class_ID
           ,@Handler_ID
           ,@Special_Request
           ,GETDATE()
           ,@UserId);

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetRunningOrderForClass]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetRunningOrderForClass]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetRunningOrderForClass]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Show_Final_Class_ID = @Show_Final_Class_ID
AND Running_Order IS NOT NULL
ORDER BY Running_Order' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByShow_Final_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByShow_Final_Class_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_ClassesByShow_Final_Class_ID]
(
	@Show_Final_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Show_Final_Class_ID = @Show_Final_Class_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByShow_Entry_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByShow_Entry_Class_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_ClassesByShow_Entry_Class_ID]
(
	@Show_Entry_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Show_Entry_Class_ID = @Show_Entry_Class_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByHandler_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByHandler_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_ClassesByHandler_ID]
(
	@Handler_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Handler_ID = @Handler_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByEntrant_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByEntrant_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_ClassesByEntrant_ID]
(
	@Entrant_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Deleted_By is null
AND Entrant_ID = @Entrant_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassesByDog_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassesByDog_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_ClassesByDog_ID]
(
	@Dog_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Dog_ID = @Dog_ID' 
END
GO
/****** Object:  StoredProcedure [dbo].[spGetDog_ClassByDog_Class_ID]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spGetDog_ClassByDog_Class_ID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spGetDog_ClassByDog_Class_ID]
(
	@Dog_Class_ID uniqueidentifier
)
AS
	SET NOCOUNT ON;
SELECT Dog_Class_ID, Entrant_ID, Dog_ID, Show_Entry_Class_ID, Show_Final_Class_ID, Handler_ID, Ring_No, Running_Order, Special_Request, Created_Date, Created_By, Modified_Date, Modified_By, Deleted_Date, Deleted_By FROM dbo.tblDog_Classes
WHERE Dog_Class_ID = @Dog_Class_ID' 
END
GO
/****** Object:  Trigger [Dog_Classes_After_Update]    Script Date: 05/09/2013 14:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[Dog_Classes_After_Update]'))
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[Dog_Classes_After_Update] 
   ON  [dbo].[tblDog_Classes] 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here
	INSERT INTO [sussexsoftwaresolutions].[dbo].[tblDog_Classes_Audit]
           ([Dog_Class_ID]
           ,[Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_ID]
           ,[Handler_ID]
           ,[Ring_No]
           ,[Running_Order]
           ,[Special_Request]
           ,[Modified_Date])
     SELECT [Dog_Class_ID]
		   ,[Entrant_ID]
           ,[Dog_ID]
           ,[Show_Entry_Class_ID]
           ,[Show_Final_Class_ID]
           ,[Handler_ID]
           ,[Ring_No]
           ,[Running_Order]
           ,[Special_Request]
           ,GETDATE()
     FROM deleted

END
'
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__4959E263]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__Appli__4959E263]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Users]'))
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__4A4E069C]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pa__Appli__4A4E069C]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Paths]'))
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__4B422AD5]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Ro__Appli__4B422AD5]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Roles]'))
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__4C364F0E]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__4C364F0E]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__4D2A7347]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__UserI__4D2A7347]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser]'))
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__4E1E9780]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pr__UserI__4E1E9780]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Profile]'))
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__4F12BBB9]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__Appli__4F12BBB9]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__5006DFF2]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Me__UserI__5006DFF2]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_Membership]'))
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__50FB042B]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Pe__PathI__50FB042B]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers]'))
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__51EF2864]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__RoleI__51EF2864]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__52E34C9D]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__aspnet_Us__UserI__52E34C9D]') AND parent_object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles]'))
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK1]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK2]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Entry_Classes_FK3]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Entry_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Entry_Classes_FK3]
GO
/****** Object:  ForeignKey [lkpClass_Names_tblShow_Entry_Classes_FK1]    Script Date: 05/09/2013 14:45:25 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes]  WITH CHECK ADD  CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1] FOREIGN KEY([Class_Name_ID])
REFERENCES [dbo].[lkpClass_Names] ([Class_Name_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpClass_Names_tblShow_Entry_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes]'))
ALTER TABLE [dbo].[tblShow_Entry_Classes] CHECK CONSTRAINT [lkpClass_Names_tblShow_Entry_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblAddresses_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblAddresses_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblAddresses_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblAddresses]'))
ALTER TABLE [dbo].[tblAddresses] CHECK CONSTRAINT [aspnet_Users_tblAddresses_FK3]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblPeople_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblPeople_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblPeople_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [aspnet_Users_tblPeople_FK3]
GO
/****** Object:  ForeignKey [tblAddresses_tblPeople_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople]  WITH CHECK ADD  CONSTRAINT [tblAddresses_tblPeople_FK1] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[tblAddresses] ([Address_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblPeople_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPeople]'))
ALTER TABLE [dbo].[tblPeople] CHECK CONSTRAINT [tblAddresses_tblPeople_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkUser_Person_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkUser_Person_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] CHECK CONSTRAINT [aspnet_Users_lnkUser_Person_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkUser_Person_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkUser_Person_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] CHECK CONSTRAINT [aspnet_Users_lnkUser_Person_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkUser_Person_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkUser_Person_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkUser_Person_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] CHECK CONSTRAINT [aspnet_Users_lnkUser_Person_FK3]
GO
/****** Object:  ForeignKey [tblPeople_lnkUser_Person_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [tblPeople_lnkUser_Person_FK2] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_lnkUser_Person_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] CHECK CONSTRAINT [tblPeople_lnkUser_Person_FK2]
GO
/****** Object:  ForeignKey [tblUsers_lnkUser_Person_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person]  WITH CHECK ADD  CONSTRAINT [tblUsers_lnkUser_Person_FK1] FOREIGN KEY([User_ID])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers_lnkUser_Person_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkUser_Person]'))
ALTER TABLE [dbo].[lnkUser_Person] CHECK CONSTRAINT [tblUsers_lnkUser_Person_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblVenues_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblVenues_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblVenues_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [aspnet_Users_tblVenues_FK3]
GO
/****** Object:  ForeignKey [tblAddresses_tblVenues_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [tblAddresses_tblVenues_FK1] FOREIGN KEY([Address_ID])
REFERENCES [dbo].[tblAddresses] ([Address_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblAddresses_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [tblAddresses_tblVenues_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblVenues_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblVenues_FK1] FOREIGN KEY([Venue_Contact])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblVenues_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblVenues]'))
ALTER TABLE [dbo].[tblVenues] CHECK CONSTRAINT [tblPeople_tblVenues_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblClubs_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblClubs_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblClubs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [aspnet_Users_tblClubs_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblClubs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblClubs_FK1] FOREIGN KEY([Club_Contact])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblClubs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblClubs]'))
ALTER TABLE [dbo].[tblClubs] CHECK CONSTRAINT [tblPeople_tblClubs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDogs_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDogs_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDogs_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [aspnet_Users_tblDogs_FK3]
GO
/****** Object:  ForeignKey [lkpDog_Breeds_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [lkpDog_Breeds_tblDogs_FK1] FOREIGN KEY([Dog_Breed_ID])
REFERENCES [dbo].[lkpDog_Breeds] ([Dog_Breed_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Breeds_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [lkpDog_Breeds_tblDogs_FK1]
GO
/****** Object:  ForeignKey [lkpDog_Gender_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [lkpDog_Gender_tblDogs_FK1] FOREIGN KEY([Dog_Gender_ID])
REFERENCES [dbo].[lkpDog_Gender] ([Dog_Gender_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpDog_Gender_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [lkpDog_Gender_tblDogs_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDogs_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDogs_FK1] FOREIGN KEY([Breeder_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [tblPeople_tblDogs_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDogs_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDogs_FK2] FOREIGN KEY([Owner_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDogs_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDogs]'))
ALTER TABLE [dbo].[tblDogs] CHECK CONSTRAINT [tblPeople_tblDogs_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShows_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShows_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [aspnet_Users_tblShows_FK3]
GO
/****** Object:  ForeignKey [lkpShow_Types_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [lkpShow_Types_tblShows_FK1] FOREIGN KEY([Show_Type_ID])
REFERENCES [dbo].[lkpShow_Types] ([Show_Type_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Types_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [lkpShow_Types_tblShows_FK1]
GO
/****** Object:  ForeignKey [lkpShow_Years_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [lkpShow_Years_tblShows_FK1] FOREIGN KEY([Show_Year_ID])
REFERENCES [dbo].[lkpShow_Years] ([Show_Year_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Years_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [lkpShow_Years_tblShows_FK1]
GO
/****** Object:  ForeignKey [tblClubs_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [tblClubs_tblShows_FK1] FOREIGN KEY([Club_ID])
REFERENCES [dbo].[tblClubs] ([Club_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblClubs_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [tblClubs_tblShows_FK1]
GO
/****** Object:  ForeignKey [tblVenues_tblShows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows]  WITH CHECK ADD  CONSTRAINT [tblVenues_tblShows_FK1] FOREIGN KEY([Venue_ID])
REFERENCES [dbo].[tblVenues] ([Venue_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblVenues_tblShows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShows]'))
ALTER TABLE [dbo].[tblShows] CHECK CONSTRAINT [tblVenues_tblShows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Sires_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [aspnet_Users_lnkDog_Sires_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Sires_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [aspnet_Users_lnkDog_Sires_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Sires_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Sires_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Sires_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [aspnet_Users_lnkDog_Sires_FK3]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Sires_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Sires_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [tblDogs_lnkDog_Sires_FK1]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Sires_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Sires_FK2] FOREIGN KEY([Sire_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Sires_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Sires]'))
ALTER TABLE [dbo].[lnkDog_Sires] CHECK CONSTRAINT [tblDogs_lnkDog_Sires_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Dams_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [aspnet_Users_lnkDog_Dams_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Dams_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [aspnet_Users_lnkDog_Dams_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkDog_Dams_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkDog_Dams_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkDog_Dams_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [aspnet_Users_lnkDog_Dams_FK3]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Dams_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Dams_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [tblDogs_lnkDog_Dams_FK1]
GO
/****** Object:  ForeignKey [tblDogs_lnkDog_Dams_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams]  WITH CHECK ADD  CONSTRAINT [tblDogs_lnkDog_Dams_FK2] FOREIGN KEY([Dam_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_lnkDog_Dams_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkDog_Dams]'))
ALTER TABLE [dbo].[lnkDog_Dams] CHECK CONSTRAINT [tblDogs_lnkDog_Dams_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkLinked_Shows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkLinked_Shows_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_lnkLinked_Shows_FK3]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_lnkLinked_Shows_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [aspnet_Users_lnkLinked_Shows_FK3]
GO
/****** Object:  ForeignKey [tblShows_lnkLinked_Shows_FK1]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [tblShows_lnkLinked_Shows_FK1] FOREIGN KEY([Parent_Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [tblShows_lnkLinked_Shows_FK1]
GO
/****** Object:  ForeignKey [tblShows_lnkLinked_Shows_FK2]    Script Date: 05/09/2013 14:45:26 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows]  WITH CHECK ADD  CONSTRAINT [tblShows_lnkLinked_Shows_FK2] FOREIGN KEY([Child_Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_lnkLinked_Shows_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[lnkLinked_Shows]'))
ALTER TABLE [dbo].[lnkLinked_Shows] CHECK CONSTRAINT [tblShows_lnkLinked_Shows_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Final_Classes_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Final_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [aspnet_Users_tblShow_Final_Classes_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1] FOREIGN KEY([Judge_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [tblPeople_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1] FOREIGN KEY([Show_Entry_Class_ID])
REFERENCES [dbo].[tblShow_Entry_Classes] ([Show_Entry_Class_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [tblShow_Entry_Classes_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblShow_Final_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes]  WITH CHECK ADD  CONSTRAINT [tblShows_tblShow_Final_Classes_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Final_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes]'))
ALTER TABLE [dbo].[tblShow_Final_Classes] CHECK CONSTRAINT [tblShows_tblShow_Final_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK3]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK7]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK7]
GO
/****** Object:  ForeignKey [aspnet_Users_tblShow_Helpers_FK8]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblShow_Helpers_FK8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [aspnet_Users_tblShow_Helpers_FK8]
GO
/****** Object:  ForeignKey [lkpShow_Roles_tblShow_Helpers_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1] FOREIGN KEY([Show_Role_ID])
REFERENCES [dbo].[lkpShow_Roles] ([Show_Role_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[lkpShow_Roles_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [lkpShow_Roles_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblShow_Helpers_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblShow_Helpers_FK1] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [tblPeople_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblShow_Helpers_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers]  WITH CHECK ADD  CONSTRAINT [tblShows_tblShow_Helpers_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblShow_Helpers_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblShow_Helpers]'))
ALTER TABLE [dbo].[tblShow_Helpers] CHECK CONSTRAINT [tblShows_tblShow_Helpers_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblGuarantors_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblGuarantors_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [aspnet_Users_tblGuarantors_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK1] FOREIGN KEY([Chairman_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK2] FOREIGN KEY([Secretary_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK2]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK3] FOREIGN KEY([Treasurer_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK4]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK4] FOREIGN KEY([Committee1_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK4]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK5]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK5] FOREIGN KEY([Committee2_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK5]
GO
/****** Object:  ForeignKey [tblPeople_tblGuarantors_FK6]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblGuarantors_FK6] FOREIGN KEY([Committee3_Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblGuarantors_FK6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblPeople_tblGuarantors_FK6]
GO
/****** Object:  ForeignKey [tblShows_tblGuarantors_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors]  WITH CHECK ADD  CONSTRAINT [tblShows_tblGuarantors_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblGuarantors_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblGuarantors]'))
ALTER TABLE [dbo].[tblGuarantors] CHECK CONSTRAINT [tblShows_tblGuarantors_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblEntrants_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblEntrants_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblEntrants_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [aspnet_Users_tblEntrants_FK3]
GO
/****** Object:  ForeignKey [tblPeople_tblEntrants_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblEntrants_FK1] FOREIGN KEY([Person_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [tblPeople_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [tblShows_tblEntrants_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants]  WITH CHECK ADD  CONSTRAINT [tblShows_tblEntrants_FK1] FOREIGN KEY([Show_ID])
REFERENCES [dbo].[tblShows] ([Show_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShows_tblEntrants_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEntrants]'))
ALTER TABLE [dbo].[tblEntrants] CHECK CONSTRAINT [tblShows_tblEntrants_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK1] FOREIGN KEY([Created_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK2]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK2] FOREIGN KEY([Modified_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK2]
GO
/****** Object:  ForeignKey [aspnet_Users_tblDog_Classes_FK3]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [aspnet_Users_tblDog_Classes_FK3] FOREIGN KEY([Deleted_By])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_tblDog_Classes_FK3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [aspnet_Users_tblDog_Classes_FK3]
GO
/****** Object:  ForeignKey [tblDogs_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblDogs_tblDog_Classes_FK1] FOREIGN KEY([Dog_ID])
REFERENCES [dbo].[tblDogs] ([Dog_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblDogs_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblDogs_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblEntrants_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblEntrants_tblDog_Classes_FK1] FOREIGN KEY([Entrant_ID])
REFERENCES [dbo].[tblEntrants] ([Entrant_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblEntrants_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblEntrants_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblPeople_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblPeople_tblDog_Classes_FK1] FOREIGN KEY([Handler_ID])
REFERENCES [dbo].[tblPeople] ([Person_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblPeople_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblPeople_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Entry_Classes_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1] FOREIGN KEY([Show_Entry_Class_ID])
REFERENCES [dbo].[tblShow_Entry_Classes] ([Show_Entry_Class_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Entry_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblShow_Entry_Classes_tblDog_Classes_FK1]
GO
/****** Object:  ForeignKey [tblShow_Final_Classes_tblDog_Classes_FK1]    Script Date: 05/09/2013 14:45:27 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes]  WITH CHECK ADD  CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1] FOREIGN KEY([Show_Final_Class_ID])
REFERENCES [dbo].[tblShow_Final_Classes] ([Show_Final_Class_ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[tblShow_Final_Classes_tblDog_Classes_FK1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDog_Classes]'))
ALTER TABLE [dbo].[tblDog_Classes] CHECK CONSTRAINT [tblShow_Final_Classes_tblDog_Classes_FK1]
GO
