#!/bin/sh
# @@@LICENSE
#
#      Copyright (c) 2008-2012 Hewlett-Packard Development Company, L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# LICENSE@@@

gunzip /var/log/messages*.gz

echo ""
echo "Missing role files:"
grep "WARNING: Missing role file for executable" /var/log/messages*

echo ""
echo "Incorrect registration permissions:"
grep "WARNING: executable: .* does not have permission to register name" /var/log/messages*

echo ""
echo "Incorrect outbound permissions:"
grep "WARNING: .* does not have sufficient outbound permissions" /var/log/messages*

echo ""
echo "Incorrect inbound permissions:"
grep "WARNING: .* permissions does not allow inbound" /var/log/messages*
