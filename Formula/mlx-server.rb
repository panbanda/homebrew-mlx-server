class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.7"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.7/mlx-server_0.1.7_aarch64-apple-darwin.tar.gz"
  sha256 "611cff4d68c419004e5a190d4a2321f0fee99d59c26d4b263dc3ea0b06a1856e"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
