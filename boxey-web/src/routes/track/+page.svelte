<script lang="ts">
	export let data: { data: string | null };
</script>

<h1>Package tracking</h1>
<form>
	<input name="uid" type="text" />
	<input type="submit" />
</form>
{#if data.data !== null}
	<br />
	<pre>{data.data}</pre>
{/if}
