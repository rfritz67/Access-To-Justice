
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/18/2012 11:43:27
-- Generated from EDMX file: C:\me-dev2\OnlineTNJustice\trunk\Tals.ProBono.Domain\Entities\LegalAdvice.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [OnlineTNJustice];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_QuestionAnswer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Posts] DROP CONSTRAINT [FK_QuestionAnswer];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryQuestion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Questions] DROP CONSTRAINT [FK_CategoryQuestion];
GO
IF OBJECT_ID(N'[dbo].[FK_CountyQuestion]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Questions] DROP CONSTRAINT [FK_CountyQuestion];
GO
IF OBJECT_ID(N'[dbo].[FK_SubscriptionsCategory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Subscriptions] DROP CONSTRAINT [FK_SubscriptionsCategory];
GO
IF OBJECT_ID(N'[dbo].[FK_QuestionAudit]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Audits] DROP CONSTRAINT [FK_QuestionAudit];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[Posts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Posts];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Counties]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Counties];
GO
IF OBJECT_ID(N'[dbo].[WorkEntries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WorkEntries];
GO
IF OBJECT_ID(N'[dbo].[Subscriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Subscriptions];
GO
IF OBJECT_ID(N'[dbo].[Emails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Emails];
GO
IF OBJECT_ID(N'[dbo].[RuleAnswers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RuleAnswers];
GO
IF OBJECT_ID(N'[dbo].[BBCodeItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BBCodeItems];
GO
IF OBJECT_ID(N'[dbo].[Audits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Audits];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Body] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [TakenBy] nvarchar(max)  NULL,
    [TakenDate] datetime  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CategoryId] int  NULL,
    [CountyId] int  NOT NULL,
    [CourtDate] datetime  NULL,
    [ClosedDate] datetime  NULL,
    [ClosedBy] nvarchar(max)  NULL
);
GO

-- Creating table 'Posts'
CREATE TABLE [dbo].[Posts] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [QuestionId] int  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Body] nvarchar(max)  NOT NULL,
    [CreatedBy] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [Accepted] bit  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CategoryName] nvarchar(max)  NOT NULL,
    [ShortDescription] nvarchar(max)  NULL,
    [LongDescription] nvarchar(max)  NULL,
    [SortOrder] int  NULL
);
GO

-- Creating table 'Counties'
CREATE TABLE [dbo].[Counties] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CountyName] nvarchar(max)  NOT NULL,
    [RegionId] int  NOT NULL
);
GO

-- Creating table 'WorkEntries'
CREATE TABLE [dbo].[WorkEntries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Hours] float  NOT NULL,
    [Logged] datetime  NOT NULL
);
GO

-- Creating table 'Subscriptions'
CREATE TABLE [dbo].[Subscriptions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CategoryId] int  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NULL,
    [Subscribed] datetime  NOT NULL
);
GO

-- Creating table 'Emails'
CREATE TABLE [dbo].[Emails] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [From] nvarchar(max)  NOT NULL,
    [To] nvarchar(max)  NOT NULL,
    [Subject] nvarchar(max)  NOT NULL,
    [Body] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RuleAnswers'
CREATE TABLE [dbo].[RuleAnswers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Question] nvarchar(max)  NOT NULL,
    [Answer] nvarchar(max)  NOT NULL,
    [IsEligible] bit  NOT NULL,
    [SessionID] nvarchar(max)  NOT NULL,
    [UserHostAddress] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BBCodeItems'
CREATE TABLE [dbo].[BBCodeItems] (
    [BBCodeID] int IDENTITY(1,1) NOT NULL,
    [Tag] nvarchar(50)  NOT NULL,
    [BeginTag] nvarchar(max)  NOT NULL,
    [EndTag] nvarchar(max)  NULL,
    [RequireClosingTag] bit  NOT NULL,
    [AutoRenderContent] bit  NOT NULL
);
GO

-- Creating table 'Audits'
CREATE TABLE [dbo].[Audits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [QuestionId] int  NOT NULL,
    [AuditType] nvarchar(max)  NOT NULL,
    [UserName] nvarchar(max)  NOT NULL,
    [AuditDate] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [PK_Posts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Counties'
ALTER TABLE [dbo].[Counties]
ADD CONSTRAINT [PK_Counties]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'WorkEntries'
ALTER TABLE [dbo].[WorkEntries]
ADD CONSTRAINT [PK_WorkEntries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Subscriptions'
ALTER TABLE [dbo].[Subscriptions]
ADD CONSTRAINT [PK_Subscriptions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Emails'
ALTER TABLE [dbo].[Emails]
ADD CONSTRAINT [PK_Emails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RuleAnswers'
ALTER TABLE [dbo].[RuleAnswers]
ADD CONSTRAINT [PK_RuleAnswers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [BBCodeID] in table 'BBCodeItems'
ALTER TABLE [dbo].[BBCodeItems]
ADD CONSTRAINT [PK_BBCodeItems]
    PRIMARY KEY CLUSTERED ([BBCodeID] ASC);
GO

-- Creating primary key on [Id] in table 'Audits'
ALTER TABLE [dbo].[Audits]
ADD CONSTRAINT [PK_Audits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [QuestionId] in table 'Posts'
ALTER TABLE [dbo].[Posts]
ADD CONSTRAINT [FK_QuestionAnswer]
    FOREIGN KEY ([QuestionId])
    REFERENCES [dbo].[Questions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionAnswer'
CREATE INDEX [IX_FK_QuestionAnswer]
ON [dbo].[Posts]
    ([QuestionId]);
GO

-- Creating foreign key on [CategoryId] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_CategoryQuestion]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryQuestion'
CREATE INDEX [IX_FK_CategoryQuestion]
ON [dbo].[Questions]
    ([CategoryId]);
GO

-- Creating foreign key on [CountyId] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_CountyQuestion]
    FOREIGN KEY ([CountyId])
    REFERENCES [dbo].[Counties]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CountyQuestion'
CREATE INDEX [IX_FK_CountyQuestion]
ON [dbo].[Questions]
    ([CountyId]);
GO

-- Creating foreign key on [CategoryId] in table 'Subscriptions'
ALTER TABLE [dbo].[Subscriptions]
ADD CONSTRAINT [FK_SubscriptionsCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SubscriptionsCategory'
CREATE INDEX [IX_FK_SubscriptionsCategory]
ON [dbo].[Subscriptions]
    ([CategoryId]);
GO

-- Creating foreign key on [QuestionId] in table 'Audits'
ALTER TABLE [dbo].[Audits]
ADD CONSTRAINT [FK_QuestionAudit]
    FOREIGN KEY ([QuestionId])
    REFERENCES [dbo].[Questions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_QuestionAudit'
CREATE INDEX [IX_FK_QuestionAudit]
ON [dbo].[Audits]
    ([QuestionId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------