<%@ include file="init.jsp"%>

<div id="A3127">

	<p class="categories-grid-description">
		<liferay-ui:message key="od.startpage.category.description" />
	</p>

	<div class="categoriesPane">
		<c:forEach items="${categories}" var="category" varStatus="row">
			<liferay-portlet:actionURL var="action">
				<liferay-portlet:param name="action" value="categorySearch" />
				<liferay-portlet:param name="categoryName" value="${category.name}" />
			</liferay-portlet:actionURL>
			<div style="display: inline-block; float: none;">
				<a href="<%=action%>" id="search" title="${category.title}">
					<table
						style="width: 100%; height: 130px; text-align: center; vertical-align: top; background: white; border-radius: 5px;">
						<tr>
							<td>
								<table style="margin-left: auto; margin-right: auto">
									<tr>
										<td><img alt="${category.name}"
											src="${themeDisplay.pathThemeImages}/categories/${category.name}.png"
											width="60" height="60"></td>
									</tr>
									<tr>
										<td style="font-size: 85%">${category.title}</td>
									</tr>
								</table> <c:out value="(${category.count})" />
							</td>
						</tr>
					</table>
				</a>
			</div>
		</c:forEach>
	</div>
</div>