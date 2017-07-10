/*
*  Copyright (c) 2017, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
*
*  WSO2 Inc. licenses this file to you under the Apache License,
*  Version 2.0 (the "License"); you may not use this file except
*  in compliance with the License.
*  You may obtain a copy of the License at
*
*    http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing,
*  software distributed under the License is distributed on an
*  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
*  KIND, either express or implied.  See the License for the
*  specific language governing permissions and limitations
*  under the License.
*/
package org.ballerinalang.composer.service.workspace.langserver.util.resolvers;

import org.ballerinalang.composer.service.workspace.langserver.SymbolInfo;
import org.ballerinalang.composer.service.workspace.langserver.dto.CompletionItem;
import org.ballerinalang.composer.service.workspace.suggetions.SuggestionsFilterDataModel;
import org.ballerinalang.model.AnnotationAttachment;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * ServiceContextResolver
 */
public class ServiceContextResolver extends AbstractItemResolver {

    @Override
    ArrayList<CompletionItem> resolveItems(SuggestionsFilterDataModel dataModel, ArrayList<SymbolInfo> symbols,
                                           HashMap<Class, AbstractItemResolver> resolvers) {
        ArrayList<CompletionItem> completionItems = new ArrayList<>();

        // Add resource
        CompletionItem resource = new CompletionItem();
        resource.setLabel(ItemResolverConstants.RESOURCE_TYPE);
        resource.setInsertText("resource ${1:name} (message ${2:m}){\n    ${3}\n}");
        resource.setDetail(ItemResolverConstants.KEYWORD_TYPE);
        resource.setSortText(ItemResolverConstants.PRIORITY_7);
        completionItems.add(resource);

        // Add annotations
        completionItems.addAll(resolvers.get(AnnotationAttachment.class).resolveItems(dataModel, symbols, resolvers));

        return completionItems;
    }
}