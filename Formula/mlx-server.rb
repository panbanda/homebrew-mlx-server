class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.2"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.2/mlx-server_0.1.2_aarch64-apple-darwin.tar.gz"
  sha256 "4bdb816dd16ce79718f1f7a940f97a83ae57b9ae3ed52ad512961715a01b0039"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
