/*
Navicat SQL Server Data Transfer

Source Server         : local
Source Server Version : 110000
Source Host           : .:1433
Source Database       : kuokuoCMSContentDB
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2013-07-28 21:42:39
*/


-- ----------------------------
-- Table structure for [dbo].[ContentAlbum]
-- ----------------------------
DROP TABLE [dbo].[ContentAlbum]
GO
CREATE TABLE [dbo].[ContentAlbum] (
[ID] uniqueidentifier NOT NULL ,
[Name] nvarchar(50) NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'相册ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'相册ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'相册名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'相册名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbum', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbum'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentAlbum
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentAlbumPicture]
-- ----------------------------
DROP TABLE [dbo].[ContentAlbumPicture]
GO
CREATE TABLE [dbo].[ContentAlbumPicture] (
[ID] uniqueidentifier NOT NULL ,
[ContentAlbumID] uniqueidentifier NOT NULL ,
[Title] nvarchar(50) NOT NULL ,
[PictureURI] nvarchar(50) NOT NULL ,
[PictureExtensionName] nvarchar(50) NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图片ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图片ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'ContentAlbumID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图片对应相册ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'ContentAlbumID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图片对应相册ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'ContentAlbumID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'Title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图片标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'Title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图片标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'Title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'PictureURI')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'相册图片地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'PictureURI'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'相册图片地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'PictureURI'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'PictureExtensionName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'图片扩展名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'PictureExtensionName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'图片扩展名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'PictureExtensionName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumPicture', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumPicture'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentAlbumPicture
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentAlbumSpecialTopicMap]
-- ----------------------------
DROP TABLE [dbo].[ContentAlbumSpecialTopicMap]
GO
CREATE TABLE [dbo].[ContentAlbumSpecialTopicMap] (
[SpecialTopicID] uniqueidentifier NOT NULL ,
[ContentAlbumID] uniqueidentifier NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'SpecialTopicID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'ContentAlbumID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'相册ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentAlbumID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'相册ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentAlbumID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentAlbumSpecialTopicMap', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentAlbumSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentAlbumSpecialTopicMap
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentArticle]
-- ----------------------------
DROP TABLE [dbo].[ContentArticle]
GO
CREATE TABLE [dbo].[ContentArticle] (
[ID] uniqueidentifier NOT NULL ,
[Title] nvarchar(50) NOT NULL ,
[Content] nvarchar(MAX) NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'Title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'Title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'Title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'Content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'Content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'Content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticle', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticle'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentArticle
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentArticleSpecialTopicMap]
-- ----------------------------
DROP TABLE [dbo].[ContentArticleSpecialTopicMap]
GO
CREATE TABLE [dbo].[ContentArticleSpecialTopicMap] (
[SpecialTopicID] uniqueidentifier NOT NULL ,
[ContentArticleID] uniqueidentifier NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'SpecialTopicID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'ContentArticleID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentArticleID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentArticleID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentArticleSpecialTopicMap', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentArticleSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentArticleSpecialTopicMap
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentMap]
-- ----------------------------
DROP TABLE [dbo].[ContentMap]
GO
CREATE TABLE [dbo].[ContentMap] (
[ID] uniqueidentifier NOT NULL ,
[Title] nchar(10) NOT NULL ,
[Content] nvarchar(MAX) NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地图ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地图ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'Title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地图标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'Title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地图标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'Title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'Content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地图内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'Content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地图内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'Content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMap', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentMap
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentMapSpecialTopicMap]
-- ----------------------------
DROP TABLE [dbo].[ContentMapSpecialTopicMap]
GO
CREATE TABLE [dbo].[ContentMapSpecialTopicMap] (
[SpecialTopicD] uniqueidentifier NOT NULL ,
[ContentMapID] uniqueidentifier NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'SpecialTopicD')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicD'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicD'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'ContentMapID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'地图ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentMapID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'地图ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentMapID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentMapSpecialTopicMap', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentMapSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentMapSpecialTopicMap
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentVideo]
-- ----------------------------
DROP TABLE [dbo].[ContentVideo]
GO
CREATE TABLE [dbo].[ContentVideo] (
[ID] uniqueidentifier NOT NULL ,
[Title] nvarchar(50) NOT NULL ,
[VideoURI] nvarchar(100) NOT NULL ,
[VideoExtensionName] nvarchar(50) NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'视频ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'视频ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'Title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'视频标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'Title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'视频标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'Title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'VideoURI')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'视频内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'VideoURI'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'视频内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'VideoURI'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'VideoExtensionName')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'视频扩展名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'VideoExtensionName'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'视频扩展名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'VideoExtensionName'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideo', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideo'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentVideo
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[ContentVideoSpecialTopicMap]
-- ----------------------------
DROP TABLE [dbo].[ContentVideoSpecialTopicMap]
GO
CREATE TABLE [dbo].[ContentVideoSpecialTopicMap] (
[SpecialTopicID] uniqueidentifier NOT NULL ,
[ContentVideoID] uniqueidentifier NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'SpecialTopicID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'ContentVideoID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'视频ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentVideoID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'视频ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'ContentVideoID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'ContentVideoSpecialTopicMap', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'ContentVideoSpecialTopicMap'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of ContentVideoSpecialTopicMap
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[DatabaseInformation]
-- ----------------------------
DROP TABLE [dbo].[DatabaseInformation]
GO
CREATE TABLE [dbo].[DatabaseInformation] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Object] nvarchar(50) NOT NULL ,
[Description] nchar(10) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[DatabaseInformation]', RESEED, 3)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'DatabaseInformation', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据库说明表主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'DatabaseInformation'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据库说明表主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'DatabaseInformation'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'DatabaseInformation', 
'COLUMN', N'Object')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据库对象名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'DatabaseInformation'
, @level2type = 'COLUMN', @level2name = N'Object'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据库对象名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'DatabaseInformation'
, @level2type = 'COLUMN', @level2name = N'Object'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'DatabaseInformation', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据库对象说明'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'DatabaseInformation'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据库对象说明'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'DatabaseInformation'
, @level2type = 'COLUMN', @level2name = N'Description'
GO

-- ----------------------------
-- Records of DatabaseInformation
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DatabaseInformation] ON
GO
INSERT INTO [dbo].[DatabaseInformation] ([ID], [Object], [Description]) VALUES (N'1', N'DatabaseInformation', N'数据库描述表    ');
GO
INSERT INTO [dbo].[DatabaseInformation] ([ID], [Object], [Description]) VALUES (N'2', N'Column', N'栏目表       ');
GO
INSERT INTO [dbo].[DatabaseInformation] ([ID], [Object], [Description]) VALUES (N'3', N'ColumnType', N'栏目类别表     ');
GO
SET IDENTITY_INSERT [dbo].[DatabaseInformation] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[SpecialTopic]
-- ----------------------------
DROP TABLE [dbo].[SpecialTopic]
GO
CREATE TABLE [dbo].[SpecialTopic] (
[ID] uniqueidentifier NOT NULL ,
[ParentSpecialTopicID] uniqueidentifier NULL ,
[SpecialTopicTypeID] uniqueidentifier NOT NULL ,
[Name] nvarchar(50) NOT NULL ,
[Description] nvarchar(100) NULL ,
[IsDispaly] bit NOT NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'ParentSpecialTopicID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目父级ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'ParentSpecialTopicID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目父级ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'ParentSpecialTopicID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'SpecialTopicTypeID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicTypeID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'SpecialTopicTypeID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'IsDispaly')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否前台显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'IsDispaly'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否前台显示'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'IsDispaly'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopic', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopic'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of SpecialTopic
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[SpecialTopicTypDictionary]
-- ----------------------------
DROP TABLE [dbo].[SpecialTopicTypDictionary]
GO
CREATE TABLE [dbo].[SpecialTopicTypDictionary] (
[ID] uniqueidentifier NOT NULL ,
[Name] nvarchar(50) NOT NULL ,
[Description] nvarchar(100) NULL ,
[SortNumber] int NULL DEFAULT ((0)) ,
[CreateUser] nvarchar(50) NOT NULL ,
[CreateDatetime] datetime NOT NULL DEFAULT (getdate()) ,
[LastUpdateUser] nvarchar(50) NULL ,
[LastUpdateDatetime] datetime NULL DEFAULT (getdate()) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'ID')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目类别ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'ID'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目类别ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'ID'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'Name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'栏目类别名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'Name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'栏目类别名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'Name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'Description')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'Description'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'Description'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'SortNumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'排序号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'SortNumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'CreateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'CreateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'CreateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'CreateDatetime'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'LastUpdateUser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'LastUpdateUser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'SpecialTopicTypDictionary', 
'COLUMN', N'LastUpdateDatetime')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后修改日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'SpecialTopicTypDictionary'
, @level2type = 'COLUMN', @level2name = N'LastUpdateDatetime'
GO

-- ----------------------------
-- Records of SpecialTopicTypDictionary
-- ----------------------------

-- ----------------------------
-- Table structure for [dbo].[sysdiagrams]
-- ----------------------------
DROP TABLE [dbo].[sysdiagrams]
GO
CREATE TABLE [dbo].[sysdiagrams] (
[name] sysname NOT NULL ,
[principal_id] int NOT NULL ,
[diagram_id] int NOT NULL IDENTITY(1,1) ,
[version] int NULL ,
[definition] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO
INSERT INTO [dbo].[sysdiagrams] ([name], [principal_id], [diagram_id], [version], [definition]) VALUES (N'Diagram_AllTables', N'1', N'1', N'1', 0xD0CF11E0A1B11AE1000000000000000000000000000000003E000300FEFF0900060000000000000000000000010000000100000000000000001000000200000001000000FEFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFF20000000FEFFFFFF0400000005000000060000000700000008000000090000000A000000320000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000FEFFFFFFFEFFFFFF22000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F0000003000000031000000FEFFFFFF3300000034000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52006F006F007400200045006E00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500FFFFFFFFFFFFFFFF0200000000000000000000000000000000000000000000000000000000000000C012521C6D8BCE0103000000C0150000000000006600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000201FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000620F0000000000006F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040002010100000004000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000B000000F729000000000000010043006F006D0070004F0062006A0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000012000201FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000003E0000005F000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A0000000B0000000C0000000D0000000E0000000F000000100000001100000012000000130000001400000015000000160000001700000018000000190000001A0000001B0000001C0000001D0000001E0000001F000000200000002100000022000000230000002400000025000000260000002700000028000000290000002A0000002B0000002C0000002D0000002E0000002F000000300000003100000032000000330000003400000035000000360000003700000038000000390000003A0000003B0000003C0000003D000000FEFFFFFF3F000000FEFFFFFFFEFFFFFF42000000430000004400000045000000460000004700000048000000490000004A0000004B0000004C0000004D0000004E0000004F000000500000005100000052000000530000005400000055000000FEFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000430000A1E100C050000802E0000000F00FFFF2E000000007D0000165F0000F23B00001BBE01002D960000DFDFFFFFB73A0000DE805B10F195D011B0A000AA00BDCB5C00001800B300000006000080010000408622BC0253797374656D0000030000003C006B0000000900000000000000D9E6B0E91C81D011AD5100A0C90F5739F43B7F847F61C74385352986E1D552F8A0327DB2D86295428D98273C25A2DA2D00002800430000000000000053444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C00002800430000000000000051444DD2011FD1118E63006097D2DF4834C9D2777977D811907000065B840D9C22000000600E000000A2017300003400A50900000700008008000000AA020000008000000C0000805363684772696400924E010000000000436F6E74656E74416C62756D00003800A5090000070000800B000000AE020000008000000E0000805363684772696400D001010000000000436F6E74656E7441727469636C65000000003400A5090000070000800D000000A6020000008000000A00008053636847726964000EB5000000000000436F6E74656E744D6170000000003400A5090000070000800F000000AA020000008000000C0000805363684772696400BE6E000000000000436F6E74656E74566964656F00003C00A50900000700008011000000B80200000080000013000080536368477269640028230000000000004461746162617365496E666F726D6174696F6E0000004400A50900000700008014000000C4020000008000001900008053636847726964005AF1FFFFB61C00005370656369616C546F70696354797044696374696F6E6172790000000000B400A5090000070000801500000052000000018000008A000000436F6E74726F6C002B0000007E3200001C205300700065006300690061006C0054006F00700069006300540079007000440069006300740069006F006E006100720079001D200E4E1C205300700065006300690061006C0054006F007000690063001D204B4EF49584767351FB7C1C2046004B005F0043006F006C0075006D006E005F0043006F006C0075006D006E0054007900700065001D20000000002800B50100000700008016000000310000005900000002800000436F6E74726F6C008FF3FFFF694200000000E400A509000007000080190000005200000001800000BC000000436F6E74726F6C00E8610000FFFEFFFF1C2043006F006E00740065006E00740056006900640065006F001D200E4E1C2043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E00740056006900640065006F001D2000002800B5010000070000801A000000310000008700000002800000436F6E74726F6C00005E0000A9FEFFFF0000E800A5090000070000801B0000006200000001800000BE000000436F6E74726F6C00D9150000C41500001C205300700065006300690061006C0054006F007000690063001D200E4E1C2043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630031001D20000000002800B5010000070000801C000000310000008900000002800000436F6E74726F6C00E54100005D35000000004400A50900000700008010000000C8020000008000001B0000805363684772696400BA45000000000000436F6E74656E74566964656F5370656369616C546F7069634D6170000000D400A5090000070000801D0000005200000001800000AC000000436F6E74726F6C00A3A70000FFFEFFFF1C2043006F006E00740065006E0074004D00610070001D200E4E1C2043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E0074004D00610070001D2000002800B5010000070000801E000000310000007F00000002800000436F6E74726F6C00EDA40000A9FEFFFF0000DC00A5090000070000801F0000006200000001800000B4000000436F6E74726F6C00411700008B1600001C205300700065006300690061006C0054006F007000690063001D200E4E1C2043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F007000690063001D2000002800B50100000700008020000000310000008300000002800000436F6E74726F6C009F520000D01E000000004400A5090000070000800E000000C402000000800000190000805363684772696400748B000000000000436F6E74656E744D61705370656369616C546F7069634D61700000000000EC00A509000007000080210000006200000001800000C4000000436F6E74726F6C00411700008B1600001C205300700065006300690061006C0054006F007000690063001D200E4E1C2043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F007000690063001D2000002800B50100000700008022000000310000008B00000002800000436F6E74726F6C0001810000B51800000000F400A509000007000080250000005200000001800000CC000000436F6E74726F6C0003F50000FFFEFFFF1C2043006F006E00740065006E007400410072007400690063006C0065001D200E4E1C2043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E007400410072007400690063006C0065001D2000002800B50100000700008026000000310000008F00000002800000436F6E74726F6C0040EF0000A9FEFFFF00004800A5090000070000800C000000CC020000008000001D000080536368477269640036D8000000000000436F6E74656E7441727469636C655370656369616C546F7069634D61700600000000E400A509000007000080270000006200000001800000BC000000436F6E74726F6C00411700008B1600001C205300700065006300690061006C0054006F007000690063001D200E4E1C2043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F007000690063001D2000002800B50100000700008028000000310000008700000002800000436F6E74726F6C00CBAD0000B51800000000E400A509000007000080290000005200000001800000BC000000436F6E74726F6C0049410100FFFEFFFF1C2043006F006E00740065006E00740041006C00620075006D001D200E4E1C2043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E00740041006C00620075006D001D2000002800B5010000070000802A000000310000008700000002800000436F6E74726F6C008D3D0100A9FEFFFF00004400A5090000070000800A000000C8020000008000001B00008053636847726964006224010000000000436F6E74656E74416C62756D5370656369616C546F7069634D6170610000C400A5090000070000802B00000052000000018000009C000000436F6E74726F6C00A7640100FFFEFFFF1C2043006F006E00740065006E00740041006C00620075006D001D200E4E1C2043006F006E00740065006E00740041006C00620075006D0050006900630074007500720065001D204B4EF49584767351FB7C1C2046004B005F0043006F006E00740065006E00740041006C00620075006D0050006900630074007500720065005F0043006F006E00740065006E00740041006C00620075006D001D2000002800B5010000070000802C000000310000007700000002800000436F6E74726F6C00795D0100A9FEFFFF00003C00A50900000700008009000000B8020000008000001300008053636847726964002471010000000000436F6E74656E74416C62756D50696374757265000000A800A5090000070000802D0000006A0000000180000080000000436F6E74726F6C0018FCFFFFC84B00001C205300700065006300690061006C0054006F007000690063001D200E4E1C205300700065006300690061006C0054006F007000690063001D204B4EF49584767351FB7C1C2046004B005F005300700065006300690061006C0054006F007000690063005F005300700065006300690061006C0054006F007000690063001D2000002800B5010000070000802E000000310000006900000002800000436F6E74726F6C0087F7FFFFA34D000000003400A50900000700008013000000AA020000008000000C00008053636847726964002C010000DC5000005370656369616C546F7069630000000000000000000000000000000000000000000000000000000000000100FEFF030A0000FFFFFFFF00000000000000000000000000000000170000004D6963726F736F66742044445320466F726D20322E300010000000456D626564646564204F626A6563740000000000F439B2710000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002143341208000000411700007F18000078563412070000001401000043006F006E00740065006E00740041006C00620075006D00000000000000000000000000EDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFEDFBFFFFE9F9FEFF65C3E5FFEDEAE6FFEEECE9FF65C3E5FFE9F9FFFFE9F9FFFF9196595EE9110080E9F9FFFFE9F9FFFFE9F9FFFFE9F9FFFFE9F9000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000B4000000D200000096000000DD0400004A010000C30000004A010000A40100001D0100000000000001000000411700007F18000000000000080000000800000002000000020000001C010000BA0900000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D00000043006F006E00740065006E00740041006C00620075006D000000214334120800000041170000E01A000078563412070000001401000043006F006E00740065006E007400410072007400690063006C0065000000000000000000E5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFF189595EE5160080E5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9FFFFE5F9000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000511F0000000000002D0100000B0000000C000000070000001C010000F708000053070000B4000000D200000096000000DD0400004A010000C30000004A010000A40100001D010000000000000100000041170000E01A000000000000090000000900000002000000020000001C010000BA0900000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006600000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000F00000043006F006E00740065006E007400410072007400690063006C0065000000214334120800000041170000E01A000078563412070000001401000043006F006E00740065006E0074004D006100700000000000C40E000000000000000000003D4A4920CD7436658EB34430BEA790050200000008020000A840BB1100002D00000000000100000068022D0054122D0050122D002009CE07A0C943001137FA76C001000000000000F1010000B8AEB1004837FA760000A50000000000C80100000000020002000000C00100000000000068C94300BD1FFB7600CE430000000000000000000000A5000000A50080C94300EA1FD8720000A5000000000068BEDF07B8AEB1008CC943000F20D87268BEDF07A0C943007B20D8720000000068BEDF07F5309F91B8C943002F20000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000511F0000000000002D0100000B0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC07000046050000000000000100000041170000E01A000000000000090000000900000002000000020000001C010000E60A00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000005E00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000B00000043006F006E00740065006E0074004D00610070000000214334120800000041170000401D000078563412070000001401000043006F006E00740065006E00740056006900640065006F000000E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FFD197595E6507008065C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF4A97595E65030080000000000B00000001000000000000000200000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000097210000000000002D0100000C0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC07000046050000000000000100000041170000401D0000000000000A0000000A00000002000000020000001C010000E60A00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D00000043006F006E00740065006E00740056006900640065006F0000002143341208000000411700009C0C00007856341207000000140100004400610074006100620061007300650049006E0066006F0072006D006100740069006F006E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000039160000000000002D010000070000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC070000460500000000000001000000411700009C0C000000000000030000000300000002000000020000001C010000E60A00000000000001000000F21300009408000000000000020000000200000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000007000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F000000140000004400610074006100620061007300650049006E0066006F0072006D006100740069006F006E0000002143341208000000D61900007F1800007856341207000000140100005300700065006300690061006C0054006F00700069006300540079007000440069006300740069006F006E006100720079000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC070000460500000000000001000000D61900007F18000000000000080000000800000002000000020000001C0100005D0C00000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000007C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001A0000005300700065006300690061006C0054006F00700069006300540079007000440069006300740069006F006E00610072007900000002000B00C201000035350000C2010000DC5000000000000002000000F0F0F000000000000000000000000000000000000100000016000000000000008FF3FFFF69420000840D00003E01000032000000010000020000840D00003E0100000200000000000500008008000080010000001500018600009001905F010004CBCECCE5140046004B005F0043006F006C0075006D006E005F0043006F006C0075006D006E00540079007000650002000B00BE6E00009600000014630000960000000000000002000000F0F0F00000000000000000000000000000000000010000001A00000000000000005E0000A9FEFFFF101D00003E01000047000000010000020000101D00003E0100000200000000000500008008000080010000001500018600009001905F010004CBCECCE52B0046004B005F0043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E00740056006900640065006F0004000B0070170000DC50000070170000AE34000050460000AE340000504600007F1800000000000002000000F0F0F00000000000000000000000000000000000010000001C00000000000000E54100005D350000BD1D00003E01000044000000010000020000BD1D00003E0100000200000000000500008008000080010000001500018600009001905F010004CBCECCE52C0046004B005F0043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F00700069006300310021433412080000005A1D00007F18000078563412070000001401000043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D006100700000005C004D006900630072006F0073006F00660074002000530051004C0020005300650072007600650072005C003100310030005C0054006F006F006C0073005C00420069006E006E005C004D0061006E006100670065006D0065006E007400530074007500640069006F005C0054006F006F006C0073005C005600440054005C004400610074006100440065007300690067006E006500720073002E0064006C006C005C0034000000F0FBFFFFF0FBFFFFF0FBFFFFF0FB000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC0700004605000000000000010000005A1D00007F18000000000000080000000800000002000000020000001C0100005B0E00000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000008000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001C00000043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D0061007000000002000B000EB5000096000000CFA80000960000000000000002000000F0F0F00000000000000000000000000000000000010000001E00000000000000EDA40000A9FEFFFF5C1A00003E010000480000000100000200005C1A00003E0100000200000000000500008008000080010000001500018600009001905F010004CBCECCE5270046004B005F0043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E0074004D006100700004000B006D18000072510000F051000072510000F051000006180000748B0000061800000000000002000000F0F0F000000000000000000000000000000000000100000020000000000000009F520000D01E0000B61B00003E0100003F000000010000020000B61B00003E0100000200000000000500008008000080010000001500018600009001905F010004CBCECCE5290046004B005F0043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630021433412080000005B1D00008718000078563412070000001401000043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D006100700000006EC6E6FF65C3E5FF7B93D4466502008000000000400000000002000065C3E5FFDD0000000B000000250100009068C11128000100040000060D00FFFF03000000DD0000000000000025010000B068C11109000100030000002A00FFFF0000000065C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF1197000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC0700004605000000000000010000005B1D00008718000000000000080000000800000002000000020000001C0100005B0E00000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000007C00000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001A00000043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D0061007000000004000B006D180000085200005178000008520000517800000618000036D80000061800000000000002000000F0F0F0000000000000000000000000000000000001000000220000000000000001810000B51800006A1E00003E010000420000000100000200006A1E00003E010000020000000000FFFFFF0008000080010000001500018600009001905F010004CBCECCE52D0046004B005F0043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630002000B00D0010100960000002FF60000960000000000000002000000F0F0F0000000000000000000000000000000000001000000260000000000000040EF0000A9FEFFFFC41F00003E01000042000000010000020000C41F00003E010000020000000000FFFFFF0008000080010000001500018600009001905F010004CBCECCE52F0046004B005F0043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E007400410072007400690063006C0065002143341208000000F91D00007F18000078563412070000001401000043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D0061007000000000010000000000006062C771E063C771D862C7711056D07160CD231004A4CF71F055D0711056D07120F6231004A4CF71F055D0711056D071E063C7719862C77140C5CF71006A6110C446611022020006000000000000000000000000981A1F09FFFFFFFF00000000981A1F090C6A6110535B565E23010080000000000000000000000000981A1F09FFFFFFFF00000000775B565E0004008000000000A0000000B01A1F0998EEDF6C0010D66C24150006871B000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC070000460500000000000001000000F91D00007F18000000000000080000000800000002000000020000001C010000B50E00000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000008400000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001E00000043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D0061007000000004000B006D1800009E520000679E00009E520000679E00000618000062240100061800000000000002000000F0F0F00000000000000000000000000000000000010000002800000000000000CBAD0000B5180000101D00003E01000041000000010000020000101D00003E010000020000000000FFFFFF0008000080010000001500018600009001905F010004CBCECCE52B0046004B005F0043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630002000B00924E01009600000075420100960000000000000002000000F0F0F00000000000000000000000000000000000010000002A000000000000008D3D0100A9FEFFFF101D00003E01000047000000010000020000101D00003E010000020000000000FFFFFF0008000080010000001500018600009001905F010004CBCECCE52B0046004B005F0043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E00740041006C00620075006D002143341208000000131E00007F18000078563412070000001401000043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D0061007000000065C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FFF197595E6506008065C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3E5FF65C3000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A72900000B1D0000000000002D0100000A0000000C000000070000001C010000F708000053070000B4000000D200000096000000DD0400004A010000C30000004A010000A40100001D0100000000000001000000131E00007F18000000000000080000000800000002000000020000001C0100005C0D00000000000001000000F21300000804000000000000000000000000000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000008000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001C00000043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D0061007000000002000B00D36501009600000024710100960000000000000002000000F0F0F00000000000000000000000000000000000010000002C00000000000000795D0100A9FEFFFFA81700003E01000044000000010000020000A81700003E010000020000000000FFFFFF0008000080010000001500018600009001905F010004CBCECCE5230046004B005F0043006F006E00740065006E00740041006C00620075006D0050006900630074007500720065005F0043006F006E00740065006E00740041006C00620075006D00214334120800000041170000A11F000078563412070000001401000043006F006E00740065006E00740041006C00620075006D0050006900630074007500720065000000F0FBFFFFF0FBFFFFF0FBFFFF5196595EF00B0080F0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FBFFFFF0FB000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A7290000DD230000000000002D0100000D0000000C000000070000001C010000F708000053070000B4000000D200000096000000DD0400004A010000C30000004A010000A40100001D010000000000000100000041170000A11F0000000000000B0000000B00000002000000020000001C010000BA0900000000000001000000F21300004E06000000000000010000000100000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000007000000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000001400000043006F006E00740065006E00740041006C00620075006D005000690063007400750072006500000005000B002C0100000852000044FDFFFF0852000044FDFFFFF44C000058020000F44C000058020000DC5000000000000002000000F0F0F00000000000000000000000000000000000010000002E0000000000000087F7FFFFA34D0000ED1200003E0100003E000000010000020000ED1200003E010000020000000000FFFFFF0008000080010000001500018600009001905F010004CBCECCE51C0046004B005F005300700065006300690061006C0054006F007000690063005F005300700065006300690061006C0054006F00700069006300214334120800000041170000401D00007856341207000000140100005300700065006300690061006C0054006F0070006900630000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000005000000540000002C0000002C0000002C000000340000000000000000000000A729000097210000000000002D0100000C0000000C000000070000001C010000F708000053070000390300000B040000D0020000DD04000018060000A203000018060000BC07000046050000000000000100000041170000401D0000000000000A0000000A00000002000000020000001C010000E60A00000000000001000000F21300009408000000000000020000000200000002000000020000001C010000F70800000100000000000000F21300000804000000000000000000000000000002000000020000001C010000F7080000000000000000000055320000DD23000000000000000000000D00000004000000040000001C010000F70800009B0A00008106000078563412040000006200000001000000010000000B000000000000000100000002000000030000000400000005000000060000000700000008000000090000000A00000004000000640062006F0000000D0000005300700065006300690061006C0054006F0070006900630000000000000000000000000300440064007300530074007200650061006D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000160002000300000006000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000021000000232100000000000053006300680065006D00610020005500440056002000440065006600610075006C0074000000000000000000000000000000000000000000000000000000000026000200FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000400000001600000000000000440053005200450046002D0053004300480045004D0041002D0043004F004E00540045004E0054005300000000000000000000000000000000000000000000002C0002010500000007000000FFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000041000000340500000000000053006300680065006D00610020005500440056002000440065006600610075006C007400200050006F007300740020005600360000000000000000000000000036000200FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000005600000012000000000000000C000000DFDFFFFFB73A00000100260000007300630068005F006C006100620065006C0073005F00760069007300690062006C0065000000010000000B0000001E000000000000000000000000000000000000006400000000000000000000000000000000000000000000000000080000000800000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000090000000900000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000A0000000A00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003400320030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000B0000000B00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003400390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000C0000000C00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003700360035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000D0000000D00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000E0000000E00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000000F0000000F00000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000100000001000000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003600370035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000110000001100000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000130000001300000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0032003700390030000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C0031003600360035000000140000001400000000000000000000000000000000000000D00200000600280000004100630074006900760065005400610062006C00650056006900650077004D006F006400650000000100000008000400000031000000200000005400610062006C00650056006900650077004D006F00640065003A00300000000100000008003A00000034002C0030002C003200380034002C0030002C0032003200390035002C0031002C0031003800370035002C0035002C0031003200340035000000200000005400610062006C00650056006900650077004D006F00640065003A00310000000100000008001E00000032002C0030002C003200380034002C0030002C0033003100360035000000200000005400610062006C00650056006900650077004D006F00640065003A00320000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00330000000100000008001E00000032002C0030002C003200380034002C0030002C0032003200390035000000200000005400610062006C00650056006900650077004D006F00640065003A00340000000100000008003E00000034002C0030002C003200380034002C0030002C0032003200390035002C00310032002C0032003700310035002C00310031002C00310036003600350000001500000015000000000000003A000000014A8C5C01000000640062006F00000046004B005F0043006F006C0075006D006E005F0043006F006C0075006D006E00540079007000650000000000000000000000C402000000001600000016000000150000000800000001C8461258C846120000000000000000AD0700000000001900000019000000000000006800000001F6517301000000640062006F00000046004B005F0043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E00740056006900640065006F0000000000000000000000C402000000001A0000001A000000190000000800000001CE461298CE46120000000000000000AD0700000000001B0000001B000000000000006A0000000100000001000000640062006F00000046004B005F0043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F00700069006300310000000000000000000000C402000000001C0000001C0000001B0000000800000001CA461298CA46120000000000000000AD0700000000001D0000001D0000000000000060000000014A8C5C01000000640062006F00000046004B005F0043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E0074004D006100700000000000000000000000C402000000001E0000001E0000001D0000000800000001C74612D8C746120000000000000000AD0700000000001F0000001F00000000000000640000000100690001000000640062006F00000046004B005F0043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630000000000000000000000C4020000000020000000200000001F0000000800000001CC4612D8CC46120000000000000000AD0700000000002100000021000000000000006C0000000100000001000000640062006F00000046004B005F0043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630000000000000000000000C402000000002200000022000000210000000800000001CD461298CD46120000000000000000AD07000000000025000000250000000000000070000000014A8C5C01000000640062006F00000046004B005F0043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E007400410072007400690063006C00650000000000000000000000C402000000002600000026000000250000000800000001CC461218CC46120000000000000000AD070000000000270000002700000000000000680000000100690001000000640062006F00000046004B005F0043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070005F005300700065006300690061006C0054006F0070006900630000000000000000000000C402000000002800000028000000270000000800000001C7461298C746120000000000000000AD070000000000290000002900000000000000680000000100270001000000640062006F00000046004B005F0043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D00610070005F0043006F006E00740065006E00740041006C00620075006D0000000000000000000000C402000000002A0000002A000000290000000800000001C24612D8C246120000000000000000AD0700000000002B0000002B0000000000000058000000016E737401000000640062006F00000046004B005F0043006F006E00740065006E00740041006C00620075006D0050006900630074007500720065005F0043006F006E00740065006E00740041006C00620075006D0000000000000000000000C402000000002C0000002C0000002B0000000800000001C2461298C246120000000000000000AD0700000000002D0000002D000000000000004A00000001006E0001000000640062006F00000046004B005F005300700065006300690061006C0054006F007000690063005F005300700065006300690061006C0054006F0070006900630000000000000000000000C402000000002E0000002E0000002D00000008000000018F5412508F54120000000000000000AD0F0000010000370000002B00000008000000090000004D0000004C00000029000000080000000A0000004C00000065000000250000000B0000000C0000004C000000650000001D0000000D0000000E0000004C00000063000000190000000F000000100000004C000000630000002D00000013000000130000004E0000000200000027000000130000000A00000051000000B400000021000000130000000C0000004F000000B40000001F000000130000000E0000004D000000B20000001B00000013000000100000004A0000000100000015000000140000001300000037000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010003000000000000000C0000000B0000004E61BC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000DBE6B0E91C81D011AD5100A0C90F5739000002001065501C6D8BCE01020200001048450000000000000000000000000000000000920100004400610074006100200053006F0075007200630065003D005300550049005A00480049004B0055004F003B0049006E0069007400690061006C00200043006100740061006C006F0067003D006B0075006F006B0075006F0043004D00530043006F006E00740065006E007400440042003B005000650072007300690073007400200053006500630075007200690074007900200049006E0066006F003D0054007200750065003B0055007300650072002000490044003D00730061003B004D0075006C007400690070006C00650041006300740069007600650052006500730075006C00740053006500740073003D00460061006C00730065003B005000610063006B00650074002000530069007A0065003D0034003000390036003B004100700070006C00690063006100740069006F006E0020004E0061006D0065003D0022004D006900630072006F0073006F00660074002000530051004C00200053006500720076006500720020004D0061006E006100670065006D0065006E0074002000530074007500640069006F002200000000800500240000004400690061006700720061006D005F0041006C006C005400610062006C0065007300000000022600340000005300700065006300690061006C0054006F00700069006300540079007000440069006300740069006F006E00610072007900000008000000640062006F000000000226001A0000005300700065006300690061006C0054006F00700069006300000008000000640062006F00000000022600280000004400610074006100620061007300650049006E0066006F0072006D006100740069006F006E00000008000000640062006F000000000226003800000043006F006E00740065006E00740056006900640065006F005300700065006300690061006C0054006F007000690063004D0061007000000008000000640062006F000000000226001A00000043006F006E00740065006E00740056006900640065006F00000008000000640062006F000000000226003400000043006F006E00740065006E0074004D00610070005300700065006300690061006C0054006F007000690063004D0061007000000008000000640062006F000000000226001600000043006F006E00740065006E0074004D0061007000000008000000640062006F000000000226003C00000043006F006E00740065006E007400410072007400690063006C0065005300700065006300690061006C0054006F007000690063004D0061007000000008000000640062006F000000000226001E00000043006F006E00740065006E007400410072007400690063006C006500000008000000640062006F000000000226003800000043006F006E00740065006E00740041006C00620075006D005300700065006300690061006C0054006F007000690063004D0061007000000008000000640062006F000000000226002800000043006F006E00740065006E00740041006C00620075006D005000690063007400750072006500000008000000640062006F000000000224001A00000043006F006E00740065006E00740041006C00620075006D00000008000000640062006F00000001000000D68509B3BB6BF2459AB8371664F0327008004E0000007B00310036003300340043004400440037002D0030003800380038002D0034003200450033002D0039004600410032002D004200360044003300320035003600330042003900310044007D000000000000000000000000000000010003000000000000000C0000000B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000062885214);
GO
SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

-- ----------------------------
-- Indexes structure for table ContentAlbum
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ContentAlbum]
-- ----------------------------
ALTER TABLE [dbo].[ContentAlbum] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table ContentAlbumPicture
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ContentAlbumPicture]
-- ----------------------------
ALTER TABLE [dbo].[ContentAlbumPicture] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table ContentArticle
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ContentArticle]
-- ----------------------------
ALTER TABLE [dbo].[ContentArticle] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table ContentMap
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ContentMap]
-- ----------------------------
ALTER TABLE [dbo].[ContentMap] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table ContentVideo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[ContentVideo]
-- ----------------------------
ALTER TABLE [dbo].[ContentVideo] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table DatabaseInformation
-- ----------------------------
CREATE UNIQUE INDEX [IX_DatabaseInformation] ON [dbo].[DatabaseInformation]
([Object] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table [dbo].[DatabaseInformation]
-- ----------------------------
ALTER TABLE [dbo].[DatabaseInformation] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table SpecialTopic
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[SpecialTopic]
-- ----------------------------
ALTER TABLE [dbo].[SpecialTopic] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table SpecialTopicTypDictionary
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[SpecialTopicTypDictionary]
-- ----------------------------
ALTER TABLE [dbo].[SpecialTopicTypDictionary] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table sysdiagrams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[sysdiagrams]
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD PRIMARY KEY ([diagram_id])
GO

-- ----------------------------
-- Uniques structure for table [dbo].[sysdiagrams]
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD UNIQUE ([principal_id] ASC, [name] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ContentAlbumPicture]
-- ----------------------------
ALTER TABLE [dbo].[ContentAlbumPicture] ADD FOREIGN KEY ([ContentAlbumID]) REFERENCES [dbo].[ContentAlbum] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ContentAlbumSpecialTopicMap]
-- ----------------------------
ALTER TABLE [dbo].[ContentAlbumSpecialTopicMap] ADD FOREIGN KEY ([ContentAlbumID]) REFERENCES [dbo].[ContentAlbum] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[ContentAlbumSpecialTopicMap] ADD FOREIGN KEY ([SpecialTopicID]) REFERENCES [dbo].[SpecialTopic] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ContentArticleSpecialTopicMap]
-- ----------------------------
ALTER TABLE [dbo].[ContentArticleSpecialTopicMap] ADD FOREIGN KEY ([ContentArticleID]) REFERENCES [dbo].[ContentArticle] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[ContentArticleSpecialTopicMap] ADD FOREIGN KEY ([SpecialTopicID]) REFERENCES [dbo].[SpecialTopic] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ContentMapSpecialTopicMap]
-- ----------------------------
ALTER TABLE [dbo].[ContentMapSpecialTopicMap] ADD FOREIGN KEY ([ContentMapID]) REFERENCES [dbo].[ContentMap] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[ContentMapSpecialTopicMap] ADD FOREIGN KEY ([SpecialTopicD]) REFERENCES [dbo].[SpecialTopic] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[ContentVideoSpecialTopicMap]
-- ----------------------------
ALTER TABLE [dbo].[ContentVideoSpecialTopicMap] ADD FOREIGN KEY ([ContentVideoID]) REFERENCES [dbo].[ContentVideo] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[ContentVideoSpecialTopicMap] ADD FOREIGN KEY ([SpecialTopicID]) REFERENCES [dbo].[SpecialTopic] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[SpecialTopic]
-- ----------------------------
ALTER TABLE [dbo].[SpecialTopic] ADD FOREIGN KEY ([SpecialTopicTypeID]) REFERENCES [dbo].[SpecialTopicTypDictionary] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[SpecialTopic] ADD FOREIGN KEY ([ParentSpecialTopicID]) REFERENCES [dbo].[SpecialTopic] ([ID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
