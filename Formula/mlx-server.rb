class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.6"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.6/mlx-server_0.1.6_aarch64-apple-darwin.tar.gz"
  sha256 "1b72b5ce0f235f2ab268c466ae9cb60cd71dd7c5a3ac886ccfa46716faa168f6"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
