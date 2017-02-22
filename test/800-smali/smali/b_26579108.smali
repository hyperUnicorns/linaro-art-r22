# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

.class public LB26579108;
.super Ljava/lang/Object;

# Ensure that merging uninitialized type and null does not pass verification.

.field public static field:I

.method public static run()Ljava/lang/String;
    .registers 2
    new-instance v0, Ljava/lang/String;

    sget v1, LB26579108;->field:I
    if-eqz v1, :cond_5

    const/4 v0, 0x0
    :cond_5

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    return-object v0
  .end method
