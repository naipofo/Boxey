import { WebTrack } from '$lib/proto/webtrack_connect.js';
import { createPromiseClient } from '@bufbuild/connect';
import { compressionGzip, createGrpcTransport } from '@bufbuild/connect-node';

export async function load({ url }) {
	const uid = url.searchParams.get('uid');
	if (uid == null) return { data: null };

	const transport = createGrpcTransport({
		httpVersion: '2',
		baseUrl: 'http://localhost:50051',
		sendCompression: compressionGzip
	});
	const client = createPromiseClient(WebTrack, transport);
	const res = await client.trackPackage({
		uid: uid.toString()
	});

	return { data: res.toJsonString({ prettySpaces: 2 }) };
}
