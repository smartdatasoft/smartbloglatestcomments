{if isset($latesComments) AND !empty($latesComments)}
<div class="block blogModule boxPlain">
   <h2 class='sdstitle_block'>{l s='Latest Comments' mod='smartbloglatestcomments'}</h2>
   <div class="block_content sdsbox-content">
      <ul class="recentComments">
	  {foreach from=$latesComments item="comment"}
            {assign var="options" value=null}
            {$options.id_post= $comment.id_post}
            {$options.slug= $comment.slug}
               <li>
            <a title="" href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}">
	       <img class="image" alt="Avatar" src="{$modules_dir}/smartblog/images/avatar/avatar-author-default.jpg"></a>
            {$comment.name} <i>{l s='on'}</i>
		   <a class="title"   href="{smartblog::GetSmartBlogLink('smartblog_post',$options)}">{$comment.content}</a>
               </li>
          {/foreach}
            </ul>
   </div>
   <div class="box-footer"><span></span></div>
</div>
{/if}