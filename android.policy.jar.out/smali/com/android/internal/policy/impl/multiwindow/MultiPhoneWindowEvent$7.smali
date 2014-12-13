.class Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;
.super Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;
.source "MultiPhoneWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent$7;->this$0:Lcom/android/internal/policy/impl/multiwindow/MultiPhoneWindowEvent;

    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onArrangeStateUpdate(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2834
    return-void
.end method

.method public onMinimizeUpdate(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2833
    return-void
.end method
