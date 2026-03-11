import asyncio
from agents import Agent, Runner
from agents.mcp import MCPServerStdio

async def main():

    fetch_params = {
        "command": "uvx",
        "args": ["mcp-server-fetch"]
    }

    async with MCPServerStdio(
        params=fetch_params,
        client_session_timeout_seconds=60
    ) as server:

        tools = await server.list_tools()
        print(tools)

asyncio.run(main())