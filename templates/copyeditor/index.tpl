{**
 * templates/copyeditor/index.tpl
 *
 * Copyright (c) 2013-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Copyeditor index.
 *
 *}
{strip}
{assign var="pageTitle" value="common.queue.long.$pageToDisplay"}
{include file="common/header.tpl"}
{/strip}

<script>
	var alternativeTitle = '<h2>{translate key="article.submissions"}</h2>';
</script>


<ul class="nav nav-tabs nav-justified">
	<li role="presentation"{if ($pageToDisplay == "active")} class="active"{/if}><a href="{url path="active"}">{translate key="common.queue.short.active"}</a></li>
	<li role="presentation"{if ($pageToDisplay == "completed")} class="active"{/if}><a href="{url path="completed"}">{translate key="common.queue.short.completed"}</a></li>
</ul>

{include file="copyeditor/$pageToDisplay.tpl"}

{include file="common/footer.tpl"}

