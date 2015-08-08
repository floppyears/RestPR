package edu.oregonstate.mist.restpr

import io.dropwizard.Configuration
import io.dropwizard.db.DataSourceFactory
import com.fasterxml.jackson.annotation.JsonProperty
import com.google.common.collect.ImmutableMap
import org.hibernate.validator.constraints.NotEmpty
import javax.validation.Valid
import javax.validation.constraints.NotNull
import java.util.Collections
import java.util.Map

/**
 * Created by georgecrary on 6/29/15.
 */
public class RESTPRConfiguration extends Configuration {
    @NotEmpty
    String template

    @NotEmpty
    String defaultName = "Stranger"

    @Valid
    @NotNull
    @JsonProperty("database")
    DataSourceFactory database = new DataSourceFactory()

    @JsonProperty("database")
    public DataSourceFactory getDataSourceFactory() {
        return database
    }

    @JsonProperty("database")
    public void setDataSourceFactory(DataSourceFactory dataSourceFactory) {
        this.database = dataSourceFactory
    }


    @NotNull
    private Map<String, Map<String, String>> viewRendererConfiguration = Collections.emptyMap()

    @JsonProperty
    public String getTemplate() {
        return template
    }

    @JsonProperty
    public void setTemplate(String template) {
        this.template = template
    }

    @JsonProperty
    public String getDefaultName() {
        return defaultName
    }

    @JsonProperty
    public void setDefaultName(String defaultName) {
        this.defaultName = defaultName
    }


    @JsonProperty("viewRendererConfiguration")
    public Map<String, Map<String, String>> getViewRendererConfiguration() {
        return viewRendererConfiguration
    }

    @JsonProperty("viewRendererConfiguration")
    public void setViewRendererConfiguration(Map<String, Map<String, String>> viewRendererConfiguration) {
        ImmutableMap.Builder<String, Map<String, String>> builder = ImmutableMap.builder()
        for (Map.Entry<String, Map<String, String>> entry : viewRendererConfiguration.entrySet()) {
            builder.put(entry.getKey(), ImmutableMap.copyOf(entry.getValue()))
        }
        this.viewRendererConfiguration = builder.build()
    }
}