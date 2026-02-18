class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.4"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.4/mlx-server_0.1.4_aarch64-apple-darwin.tar.gz"
  sha256 "25ec9fda228038a6eb59f5445e5a7483a9203b4173defec1bab41dfd28316164"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
