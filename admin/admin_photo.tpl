<h2>{$TITLE} &#8250; {'Edit photo'|@translate} {$TABSHEET_TITLE}</h2>

<form action="{$F_ACTION}" method="post" id="openstreetmap">

	<input type="hidden" name="pwg_token" value="{$PWG_TOKEN}">
	<fieldset>
		<legend>{'Information'|@translate}</legend>
		<div style="float: left;">
			<img src="{$TN_SRC}" alt="{'Thumbnail'|@translate}" class="Thumbnail">
		</div>
		{if not empty($EXIF)}
		<div style="float: left; margin: auto;">
			<ul>
				{foreach from=$EXIF key=name item=metadata}
				<li>{$name}: {$metadata}</li>
				{/foreach}
			</ul>
		</div>
		{/if}
		<div style="float: left; margin: auto;">
          <ul>
            <li><a href="{$SYNC_URL}">{'Synchronize metadata'|@translate}</a></li>
          </ul>
		</div>
		{if not empty($INFOS)}
		<div style="float: left;">
			<ul>
				{foreach from=$INFOS key=name item=data}
					{if $name == 'videos'}
						<ul>
						{foreach from=$data item=video}
							<li>source src="{$video.src}" type="{$video.ext}"</li>
						{/foreach}
						</ul>
					{elseif $name == 'thumbnails'}
						<ul>
						{foreach from=$data item=thumb}
							<li>thumbnail at second="{$thumb.second}" source="{$thumb.source}"</li>
						{/foreach}
						</ul>
					{else}
						<li>{$name}: {$data}</li>
					{/if}
				{/foreach}
			</ul>
		</div>
		{/if}
	</fieldset>
</form>
