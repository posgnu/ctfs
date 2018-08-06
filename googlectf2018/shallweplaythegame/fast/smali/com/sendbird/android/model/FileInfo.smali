.class public Lcom/sendbird/android/model/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private customField:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:I

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/sendbird/android/model/FileInfo;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "size"    # I
    .param p4, "customField"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v1, Lcom/sendbird/android/model/FileInfo;

    invoke-direct {v1}, Lcom/sendbird/android/model/FileInfo;-><init>()V

    .line 25
    .local v1, "m":Lcom/sendbird/android/model/FileInfo;
    :try_start_0
    iput-object p0, v1, Lcom/sendbird/android/model/FileInfo;->url:Ljava/lang/String;

    .line 26
    iput-object p1, v1, Lcom/sendbird/android/model/FileInfo;->name:Ljava/lang/String;

    .line 27
    iput p3, v1, Lcom/sendbird/android/model/FileInfo;->size:I

    .line 28
    iput-object p2, v1, Lcom/sendbird/android/model/FileInfo;->type:Ljava/lang/String;

    .line 29
    iput-object p4, v1, Lcom/sendbird/android/model/FileInfo;->customField:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "m":Lcom/sendbird/android/model/FileInfo;
    :goto_0
    return-object v1

    .line 30
    .restart local v1    # "m":Lcom/sendbird/android/model/FileInfo;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCustomField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sendbird/android/model/FileInfo;->customField:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sendbird/android/model/FileInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sendbird/android/model/FileInfo;->size:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sendbird/android/model/FileInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sendbird/android/model/FileInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomField(Ljava/lang/String;)V
    .locals 0
    .param p1, "customField"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sendbird/android/model/FileInfo;->customField:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/sendbird/android/model/FileInfo;->size:I

    .line 81
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sendbird/android/model/FileInfo;->type:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sendbird/android/model/FileInfo;->url:Ljava/lang/String;

    .line 69
    return-void
.end method
