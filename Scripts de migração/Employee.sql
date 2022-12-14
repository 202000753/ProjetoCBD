 /********************************************
 *	UC: Complementos de Bases de Dados 2022/2023
 *
 *	Projeto 1? Fase - Migra??o da tabela Employee para o schema OldData
 *		Nuno Reis (202000753)
 *			Turma: 2?L_EI-SW-08 - sala F155 (12:30h - 16:30h)
 *
 ********************************************/
 USE WWIGlobal
GO

/****** Object:  Table [OldData].[Employee] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [OldData].[Employee](
	[Employee Key] [int] NOT NULL,
	[Employee] [nvarchar](50) NOT NULL,
	[Preferred Name] [nvarchar](50) NOT NULL,
	[Is Salesperson] [bit] NOT NULL,
	[Photo] [varbinary](max) NULL
) ON[PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (1, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (2, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (3, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (4, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (5, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (6, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (7, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (8, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (9, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (10, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (11, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (12, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (13, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (14, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (15, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (16, N'Katie Darwin', N'Katie', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (17, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (18, N'Eva Muirden', N'Eva', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (19, N'Archer Lamble', N'Archer', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (20, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (21, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (22, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (23, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (24, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (25, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (26, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (27, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (28, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (29, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (30, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (31, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (32, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (33, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (34, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (35, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (36, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (37, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (38, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (39, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (40, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (41, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (42, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (43, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (44, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (45, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (46, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (47, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (48, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (49, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (50, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (51, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (52, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (53, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (54, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (55, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (56, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (57, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (58, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (59, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (60, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (61, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (62, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (63, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (64, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (65, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (66, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (67, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (68, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (69, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (70, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (71, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (72, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (73, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (74, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (75, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (76, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (77, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (78, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (79, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (80, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (81, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (82, N'Katie Darwin', N'Katie', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (83, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (84, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (85, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (86, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (87, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (88, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (89, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (90, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (91, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (92, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (93, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (94, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (95, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (96, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (97, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (98, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (99, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (100, N'Stella Rosenhain', N'Stella', 0, NULL)
GO
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (101, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (102, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (103, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (104, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (105, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (106, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (107, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (108, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (109, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (110, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (111, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (112, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (113, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (114, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (115, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (116, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (117, N'Katie Darwin', N'Katie', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (118, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (119, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (120, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (121, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (122, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (123, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (124, N'Katie Darwin', N'Katie', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (125, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (126, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (127, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (128, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (129, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (130, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (131, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (132, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (133, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (134, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (135, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (136, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (137, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (138, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (139, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (140, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (141, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (142, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (143, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (144, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (145, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (146, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (147, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (148, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (149, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (150, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (151, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (152, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (153, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (154, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (155, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (156, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (157, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (158, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (159, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (160, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (161, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (162, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (163, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (164, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (165, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (166, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (167, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (168, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (169, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (170, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (171, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (172, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (173, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (174, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (175, N'Jack Potter', N'Jack', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (176, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (177, N'Katie Darwin', N'Katie', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (178, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (179, N'Archer Lamble', N'Archer', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (180, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (181, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (182, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (183, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (184, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (185, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (186, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (187, N'Anthony Grosse', N'Anthony', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (188, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (189, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (190, N'Eva Muirden', N'Eva', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (191, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (192, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (193, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (194, N'Kayla Woodcock', N'Kayla', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (195, N'Hudson Onslow', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (196, N'Isabella Rupp', N'Isabella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (197, N'Eva Muirden', N'Eva', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (198, N'Sophia Hinton', N'Sophia', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (199, N'Amy Trefl', N'Amy', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (200, N'Anthony Grosse', N'Anthony', 1, NULL)
GO
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (201, N'Alica Fatnowna', N'Alica', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (202, N'Stella Rosenhain', N'Stella', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (203, N'Ethan Onslow', N'Ethan', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (204, N'Henry Forlonge', N'Henry', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (205, N'Hudson Hollinworth', N'Hudson', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (206, N'Lily Code', N'Lily', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (207, N'Taj Shand', N'Taj', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (208, N'Archer Lamble', N'Archer', 1, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (209, N'Piper Koch', N'Piper', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (210, N'Katie Darwin', N'Katie', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (211, N'Jai Shand', N'Jai', 0, NULL)
INSERT [OldData].[Employee] ([Employee Key], [Employee], [Preferred Name], [Is Salesperson], [Photo]) VALUES (212, N'Jack Potter', N'Jack', 1, NULL)
GO
