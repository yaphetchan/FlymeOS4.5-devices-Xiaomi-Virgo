.class public final Landroid/app/Notification$Action$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 1139
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Action;)V
    .locals 4
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const/4 v3, 0x1

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput v3, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 1147
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1148
    .local v0, "wearableBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1149
    const-string v1, "flags"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 1150
    const-string v1, "inProgressLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 1151
    const-string v1, "confirmLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 1152
    const-string v1, "cancelLabel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 1154
    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1214
    if-eqz p2, :cond_0

    .line 1215
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_0
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/app/Notification$Action$WearableExtender;
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Landroid/app/Notification$Action$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$Action$WearableExtender;-><init>()V

    .line 1185
    .local v0, "that":Landroid/app/Notification$Action$WearableExtender;
    iget v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    .line 1186
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 1187
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 1188
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 1189
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1112
    invoke-virtual {p0}, Landroid/app/Notification$Action$WearableExtender;->clone()Landroid/app/Notification$Action$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public extend(Landroid/app/Notification$Action$Builder;)Landroid/app/Notification$Action$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Action$Builder;

    .prologue
    .line 1163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1165
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget v1, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1166
    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1168
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1169
    const-string v1, "inProgressLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1171
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1172
    const-string v1, "confirmLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1174
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 1175
    const-string v1, "cancelLabel"

    iget-object v2, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1178
    :cond_3
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1179
    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 1

    .prologue
    .line 1210
    iget v0, p0, Landroid/app/Notification$Action$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAvailableOffline(Z)Landroid/app/Notification$Action$WearableExtender;
    .locals 1
    .param p1, "availableOffline"    # Z

    .prologue
    .line 1199
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Action$WearableExtender;->setFlag(IZ)V

    .line 1200
    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1273
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    .line 1274
    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1251
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    .line 1252
    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroid/app/Notification$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 1229
    iput-object p1, p0, Landroid/app/Notification$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    .line 1230
    return-object p0
.end method
