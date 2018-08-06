.class abstract Lretrofit/RequestBuilderAction;
.super Ljava/lang/Object;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RequestBuilderAction$Body;,
        Lretrofit/RequestBuilderAction$PartMap;,
        Lretrofit/RequestBuilderAction$Part;,
        Lretrofit/RequestBuilderAction$FieldMap;,
        Lretrofit/RequestBuilderAction$Field;,
        Lretrofit/RequestBuilderAction$QueryMap;,
        Lretrofit/RequestBuilderAction$Query;,
        Lretrofit/RequestBuilderAction$Path;,
        Lretrofit/RequestBuilderAction$Header;,
        Lretrofit/RequestBuilderAction$Url;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    return-void
.end method


# virtual methods
.method abstract perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
.end method
