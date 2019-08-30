#!/usr/bin/env python

import asyncio
import websockets


async def echo(websocket, path):
    print('connection started')
    try:
        while True:
            message = await websocket.recv()
            await websocket.send(message)
            print(f'echoed: {message}')
    except:
        pass


def main():
    start_server = websockets.serve(echo, '0.0.0.0', 8765)
    asyncio.get_event_loop().run_until_complete(start_server)
    asyncio.get_event_loop().run_forever()


if __name__ == '__main__':
    main()
