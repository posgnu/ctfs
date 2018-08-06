.class public Lco/kr/festfive/model/NewsFeedList;
.super Ljava/lang/Object;
.source "NewsFeedList.java"


# instance fields
.field public company_text:Ljava/lang/String;

.field public content_text:Ljava/lang/String;

.field public date_text:Ljava/lang/String;

.field public iv_heart_like_flag:Z

.field public like_text:Ljava/lang/String;

.field public modify_button_image_flag:Z

.field public name_text:Ljava/lang/String;

.field public office_name_text:Ljava/lang/String;

.field public pager:Landroid/graphics/drawable/Drawable;

.field public profile_image:Landroid/graphics/drawable/Drawable;

.field public reply_text:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->profile_image:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->name_text:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->office_name_text:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->company_text:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lco/kr/festfive/model/NewsFeedList;->modify_button_image_flag:Z

    .line 16
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->date_text:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->content_text:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->pager:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-boolean v1, p0, Lco/kr/festfive/model/NewsFeedList;->iv_heart_like_flag:Z

    .line 20
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->like_text:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->reply_text:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->type:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "profile_image"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name_text"    # Ljava/lang/String;
    .param p3, "office_name_text"    # Ljava/lang/String;
    .param p4, "company_text"    # Ljava/lang/String;
    .param p5, "modify_button_image_flag"    # Z
    .param p6, "date_text"    # Ljava/lang/String;
    .param p7, "content_text"    # Ljava/lang/String;
    .param p8, "pager"    # Landroid/graphics/drawable/Drawable;
    .param p9, "iv_heart_like_flag"    # Z
    .param p10, "like_text"    # Ljava/lang/String;
    .param p11, "reply_text"    # Ljava/lang/String;
    .param p12, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->profile_image:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->name_text:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->office_name_text:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->company_text:Ljava/lang/String;

    .line 15
    iput-boolean v1, p0, Lco/kr/festfive/model/NewsFeedList;->modify_button_image_flag:Z

    .line 16
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->date_text:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->content_text:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->pager:Landroid/graphics/drawable/Drawable;

    .line 19
    iput-boolean v1, p0, Lco/kr/festfive/model/NewsFeedList;->iv_heart_like_flag:Z

    .line 20
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->like_text:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->reply_text:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lco/kr/festfive/model/NewsFeedList;->type:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lco/kr/festfive/model/NewsFeedList;->profile_image:Landroid/graphics/drawable/Drawable;

    .line 29
    iput-object p2, p0, Lco/kr/festfive/model/NewsFeedList;->name_text:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lco/kr/festfive/model/NewsFeedList;->office_name_text:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lco/kr/festfive/model/NewsFeedList;->company_text:Ljava/lang/String;

    .line 32
    iput-boolean p5, p0, Lco/kr/festfive/model/NewsFeedList;->modify_button_image_flag:Z

    .line 33
    iput-object p6, p0, Lco/kr/festfive/model/NewsFeedList;->date_text:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lco/kr/festfive/model/NewsFeedList;->content_text:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lco/kr/festfive/model/NewsFeedList;->pager:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-boolean p9, p0, Lco/kr/festfive/model/NewsFeedList;->iv_heart_like_flag:Z

    .line 37
    iput-object p10, p0, Lco/kr/festfive/model/NewsFeedList;->like_text:Ljava/lang/String;

    .line 38
    iput-object p11, p0, Lco/kr/festfive/model/NewsFeedList;->reply_text:Ljava/lang/String;

    .line 39
    iput-object p12, p0, Lco/kr/festfive/model/NewsFeedList;->type:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getData()Lco/kr/festfive/model/NewsFeedList;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method
