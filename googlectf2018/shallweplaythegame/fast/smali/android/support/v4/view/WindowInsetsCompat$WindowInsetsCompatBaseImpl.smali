.class Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"

# interfaces
.implements Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowInsetsCompatBaseImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/WindowInsetsCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/view/WindowInsetsCompat$1;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeStableInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStableInsetBottom(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getStableInsetLeft(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getStableInsetRight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getStableInsetTop(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public hasInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public hasStableInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public hasSystemWindowInsets(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isConsumed(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isRound(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public replaceSystemWindowInsets(Ljava/lang/Object;Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 1
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "systemWindowInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method
