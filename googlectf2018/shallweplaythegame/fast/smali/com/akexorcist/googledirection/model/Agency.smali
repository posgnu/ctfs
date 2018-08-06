.class public Lcom/akexorcist/googledirection/model/Agency;
.super Ljava/lang/Object;
.source "Agency.java"


# annotations
.annotation runtime Lorg/parceler/Parcel;
    parcelsIndex = false
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Agency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/akexorcist/googledirection/model/Agency;->url:Ljava/lang/String;

    return-object v0
.end method
