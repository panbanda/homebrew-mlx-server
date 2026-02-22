class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.8"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.8/mlx-server_0.1.8_aarch64-apple-darwin.tar.gz"
  sha256 "57c959c94555b226d520a99bf38ef431ddf5f9d1044e1dcaa1cfbe556871c4c9"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
