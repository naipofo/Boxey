import { WebTrack } from '$lib/proto/webtrack_connect.js';
import { createPromiseClient } from '@bufbuild/connect';
import { compressionGzip, createGrpcTransport } from '@bufbuild/connect-node';

export async function load({ params }) {
	const transport = createGrpcTransport({
		httpVersion: '2',
		baseUrl: 'http://localhost:50051',
		sendCompression: compressionGzip
	});
	const client = createPromiseClient(WebTrack, transport);
	const res = await client.trackPackage({
		uid: params.uid
	});

	return {
		data: `package with uid: ${params.uid}\n${res.toJsonString({ prettySpaces: 2 })}`
	};
}
