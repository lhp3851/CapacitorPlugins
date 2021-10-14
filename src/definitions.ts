export interface CapacitorPluginsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
