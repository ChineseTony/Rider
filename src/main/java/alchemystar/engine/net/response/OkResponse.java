package alchemystar.engine.net.response;

import alchemystar.engine.net.handler.frontend.FrontendConnection;
import alchemystar.engine.net.proto.mysql.OkPacket;
import io.netty.channel.ChannelHandlerContext;

/**
 * OkResponse
 *
 * @Author lizhuyang
 */
public class OkResponse {
    public static void response(FrontendConnection c) {
        OkPacket okPacket = new OkPacket();
        ChannelHandlerContext ctx = c.getCtx();
        okPacket.write(ctx);
    }
}
