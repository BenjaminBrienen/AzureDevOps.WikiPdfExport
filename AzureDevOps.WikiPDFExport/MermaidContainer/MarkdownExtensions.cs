using Markdig;

namespace AzureDevOps.WikiPDFExport.MermaidContainer;

/// <summary>
/// Provides extension methods for <see cref="MarkdownPipeline"/> to enable several Markdown extensions.
/// </summary>
internal static class MarkdownExtensions
{
	/// <summary>
	/// Uses the mermaid containers extension.
	/// </summary>
	/// <param name="pipeline">The pipeline.</param>
	/// <returns>The modified pipeline</returns>
	public static MarkdownPipelineBuilder UseMermaidContainers(this MarkdownPipelineBuilder pipeline)
	{
		pipeline.Extensions.AddIfNotAlready<MermaidContainerExtension>();
		return pipeline;
	}
}
