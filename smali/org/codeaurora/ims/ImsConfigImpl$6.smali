.class Lorg/codeaurora/ims/ImsConfigImpl$6;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 289
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 11

    .line 292
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmServiceSub(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 294
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    .line 295
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "onSubscriptionsChanged unable to process due to SubscriptionInfo is null"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 298
    return-void

    .line 301
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 302
    .local v1, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscriptionsChanged oldSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new SubId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 305
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 306
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmSubId(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 307
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 308
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 312
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)V

    .line 314
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/TelephonyManager;)V

    .line 315
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmTelephonyManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmPhoneStateListener(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 319
    sget-object v2, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 322
    .local v2, "voLTEEnabledUri":Landroid/net/Uri;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVoLTEEnabledObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v6

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 327
    sget-object v3, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "nr_advanced_calling_enabled"

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 330
    .local v3, "NR_ADVANCED_CALLING_ENABLED_CONTENT_URI":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 333
    .local v6, "voNrEnabledUri":Landroid/net/Uri;
    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVonrEnabledObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v8

    invoke-virtual {v7, v6, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v8, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v10}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V

    .line 340
    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v8, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v9}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v7, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V

    .line 342
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVoWiFiModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v8

    invoke-virtual {v5, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v7}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v8}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVoWiFiRoamingModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v8

    invoke-virtual {v5, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5, v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmIsContentObserversRegistered(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    goto :goto_1

    .line 309
    .end local v2    # "voLTEEnabledUri":Landroid/net/Uri;
    .end local v3    # "NR_ADVANCED_CALLING_ENABLED_CONTENT_URI":Landroid/net/Uri;
    .end local v6    # "voNrEnabledUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subscription id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    return-void

    .line 348
    :cond_3
    :goto_1
    return-void
.end method
