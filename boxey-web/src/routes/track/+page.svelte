<script lang="ts">
	import { StatusTypeUser } from '$lib/proto/packages_pb';
	import { TrackPackageReply } from '$lib/proto/webtrack_pb';
	import type { JsonValue } from '@bufbuild/protobuf';

	export let data: { trackPackage: JsonValue; uid: JsonValue };
	$: trackPackageReply =
		data.trackPackage !== null ? TrackPackageReply.fromJson(data.trackPackage) : null;
</script>

<h1>Package tracking</h1>
<form>
	<input name="uid" type="text" minlength="1" />
	<input type="submit" />
</form>
{#if trackPackageReply !== null && trackPackageReply?.status.length !== 0}
	<h2>Package {data.uid}</h2>
	<ol>
		{#each trackPackageReply.status as event}
			<li><b>{StatusTypeUser[event.type]}</b> - {event.time?.toDate()}</li>
		{/each}
	</ol>
{:else if data.uid !== undefined}
	<h2>Package {data.uid} not found!</h2>
{/if}
